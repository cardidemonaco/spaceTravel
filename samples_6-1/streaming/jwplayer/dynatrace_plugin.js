/**
 * This plugin for JWPlayer (http://www.longtailvideo.com/players/) uses the
 * JWPlayer JavaScript API to collect information about the media being played
 * and reports these information to the dynaTrace Server utilizing the dynaTrace
 * JavaScript ADK.
 *
 * NB: This plugin does only work correctly for one video (no playlist support) and
 * if the media played is manipulated using the JavaScript API.
 */
(function(jwplayer){

	var dynatracePlugin = function(player, config, div) {

		// the information we need to collect for dynaTrace ADK

		/**
		 * The media type of the currently played media, one of _audio_ or _video_
		 */
		var mediaType = null;

		/**
		 * The url of the played media
		 */
		var source = null;

		/**
		 * The duration of the video (in seconds)
		 */
		var duration = -1;

		/**
		 * The time (in milliseconds) that the video has already played. This time
		 * can be more than the total duration of the video if the user plays (parts
		 * of) the video multiple times.
		 */
		var playTime = 0;
		
		/**
		 * The time (in seconds) that the video has already played. This time
		 * can be more than the total duration of the video if the user plays (parts
		 * of) the video multiple times. This value is calculated each time the playTime
		 * value is updated and is essentially a rounded value that will be sent instead
		 * of the more accurate millisecond count. 
		 * The reason this isn't done right before sending the signal is that we want
		 * to be as fast as possible in the onbeforeunload event and perform no calculations
		 * there.
		 */
		var playTimeForSending = 0;

		/**
		 * The most advanced position (in seconds) of the video that was reached during
		 * playback. No connection with play time because users can forward to a latter
		 * position in the video.
		 * In case the media was played completely this equals the duration of the
		 * video.
		 */
		var maxPlayTime = 0;

		/**
		 * true if the video started played without user interaction, false otherwise
		 * passed as a parameter to the plugin since this information can not easily
		 * be retrieved from within.
		 */
		var autoplay = config.autoplay;

		/**
		 * True if the media was played back completely to the end, false otherwise
		 */
		var watchedTillEnd = false;

		/**
		 * The number of times playback had to stop and the user had to wait because
		 * the player needs to fill the buffer again.
		 */
		var bufferingCount = 0;

		/**
		 * The total amount of time (in milliseconds) the user had to wait for play
		 * back to continue due to buffering events.
		 */
		var bufferingTime = 0;
		
		/**
		 * The total amount of time (in seconds) the user had to wait for play
		 * back to continue due to buffering events. This value is calculated each time 
		 * the bufferingTime value is updated and is essentially a rounded value that will 
		 * be sent instead of the more accurate millisecond count. 
		 * The reason this isn't done right before sending the signal is that we want
		 * to be as fast as possible in the onbeforeunload event and perform no calculations
		 * there..
		 */
		var bufferingTimeForSending = 0;

		// helper variables
		/**
		 * The last time (in milliseconds) when the buffering state was entered, -1
		 * if not currently in the buffering state.
		 */
		var bufferingStart = -1;

		/**
		 * The time (in milliseconds) when the last time event occured, -1 if
		 * no time event has occured yet
		 */
		var lastTimeEvent = -1;


		/**
		 * Assign event listeners for the player events after the player has
		 * fully loaded.
		 * @param evt
		 */
		function setup(evt) {
			player.onComplete(onCompleteEvent);
			player.onTime(onTimeEvent);
			player.onBeforePlay(updateVideoInformation);
			player.onError(onErrorEvent);
			player.onMeta(updateVideoInformation);

			// state change events
			player.onBuffer(onStateChange);
			player.onIdle(onStateChange);
			player.onPlay(onStateChange);
			player.onPause(onStateChange);
		};

		/**
		 * Called whenever the player state changes. The 4 player states are
		 *  - IDLE
		 *  - BUFFERING
		 *  - PAUSE
		 *  - PLAY
		 * @param stateChange
		 */
		function onStateChange(stateChange) {
			if (stateChange.newstate == "BUFFERING") {
				bufferingCount++;
				bufferingStart = getCurrentTime();
			} else if (stateChange.oldstate == "BUFFERING") {
				bufferingTime += getCurrentTime() - bufferingStart;
				bufferingTimeForSending = Math.round(bufferingTime / 1000);
				bufferingStart = -1;
			}
		}

		/**
		 * Called once the playback reaches the end of the media file.
		 */
		function onCompleteEvent() {
			maxPlayTime = duration;
			watchedTillEnd = true;
		}

		/**
		 * Called multiple times a second during playback of the video with the
		 * current position of the video playback.
		 * @param mediaTime
		 */
		function onTimeEvent(mediaTime) {
			if (Math.round(mediaTime.position) > maxPlayTime) {
				maxPlayTime = Math.round(mediaTime.position);
			}
			var currentTime = getCurrentTime();
			if (lastTimeEvent > 0) {
				playTime += currentTime - lastTimeEvent;
				playTimeForSending = Math.round(playTime / 1000);
			}
			lastTimeEvent = currentTime;
		}

		/**
		 * Reads the metadata of the currently active media and stores the values
		 * that are needed for the dynatrace agent.
		 */
		function updateVideoInformation() {
			var videoInformation = player.getPlaylist()[0];
			if (!mediaType) {
				if (videoInformation.type == "video") {
					mediaType = "_video_";
				} else if (videoInformation.type == "audio") {
					mediaType = "_audio_";
				}
			}

			if (!source && videoInformation.file) {
				source = videoInformation.file;
			}

			if (duration < 0 && videoInformation.duration > 0) {
				duration = Math.round(videoInformation.duration);
			}
		}

		/**
		 * Called whenever an error occurs in the player. The error is then
		 * reported to the dynaTrace server using the JavaScript ADK.
		 * @param message
		 */
		function onErrorEvent(message) {
			dynaTrace.reportError(message);
		}

		/**
		 * Reports the collected information on the media item using the dynaTrace
		 * ADK.
		 *
		 */
		function reportMediaStateToDynaTraceAgent() {
			// we need to be as fast as possible in the unload event therefore we are not doing any calculations here
			dynaTrace.addStreamingNode(source, duration, autoplay, watchedTillEnd,
					maxPlayTime, playTimeForSending, bufferingCount, bufferingTimeForSending, mediaType);
		}

		/**
		 * Returns the current time in milliseconds since the epoch
		 * @returns
		 */
		function getCurrentTime() {
			return new Date().getTime();
		}

		// assign event listeners to player
		player.onReady(setup);

		// register a callback for the page leaving listener so that the media
		// information is sent to the dynaTrace server before the page is unloaded
		// and the data is lost.
		dynaTrace.addPageLeavingListener(reportMediaStateToDynaTraceAgent);

		// needs to be called for plugins to work correctly according to the documentation
		this.resize = function(width, height) {};
	};

	jwplayer().registerPlugin('dynatrace_plugin', dynatracePlugin);

})(jwplayer);