package 
{
	import flash.external.ExternalInterface;
	import flash.net.URLRequest;
	import flash.net.URLRequestHeader;
	import flash.net.URLRequestMethod;
	import flash.net.URLVariables;

	/**
	 * This class wraps the DynaTrace JavaScript ADK for usage with Flash/Adobe Flex. For
	 * this class to work correctly it needs to be executed in an environment where the
	 * ExternalInterface class is supported and accepts JavaScript commands which is the
	 * case if flash is run in most modern browsers.
	 */
	public class DynaTraceFlashAdk
	{

		/**
		 * Constant for thirdparty type image
		 */
		public const THIRDPARTY_TYPE_IMAGE:String  = "i";

		/**
		 * Constant for thirdparty type script
		 */
		public const THIRDPARTY_TYPE_SCRIPT:String = "s";

		/**
		 * Constant for thirdparty type custom
		 */
		public const THIRDPARTY_TYPE_CUSTOM:String = "c";

		/*
		 * API Functionality
		 */

		/**
		 *
		 */
		public function setAutomaticActionDetection(enabled:Boolean):void
		{
			ExternalInterface.call("dynaTrace.setAutomaticActionDetection", new Array(enabled));
		}

		/**
		 * Indicates the start of onload. Can be called to indicate when onload of a framework starts.
		 */
		public function signalLoadStart(parentAction:String = null):void
		{
			ExternalInterface.call("dynaTrace.signalLoadStart", new Array(parentAction));
		}

		/**
		 * Indicates that a load end was reached. A framework can have more than one of them. The last one ends the onload action.
		 */
		public function signalLoadEnd(parentAction:String = null):void
		{
			ExternalInterface.call("dynaTrace.signalLoadEnd", new Array(parentAction));
		}

		/**
		 * Starts a new action. If no parentAction is provided, a new root action is started. The function returns the name
		 * of the new action (can differ from the name given as parameter, when multiple actions with the same name happen).
		 */
		public function enterAction(actionName:String, actionType:String, time:Number = -1, parentAction:String = null):String
		{
			if (parentAction == null) {
				if (time > 0) {
					return ExternalInterface.call("dynaTrace.enterAction", actionName, actionType, time);
				} else {
					return ExternalInterface.call("dynaTrace.enterAction", actionName, actionType);
				}
			} else {
				return ExternalInterface.call("dynaTrace.enterAction", actionName, actionType, time, parentAction);
			}
		}

		/**
		 * Stops the action with the given name
		 */
		public function leaveAction(name:String):void
		{
			ExternalInterface.call("dynaTrace.leaveAction", name);
		}

		/**
		 * Reports an error message to the server to be displayed in the page action
		 */
		public function reportError(msg:String, parentAction:String = null):void
		{
			ExternalInterface.call("dynaTrace.reportError", msg, parentAction);
		}

		/**
		 * Reports a warning message to the server to be displayed in the page action
		 */
		public function reportWarning(msg:String, parentAction:String = null):void
		{
			ExternalInterface.call("dynaTrace.reportWarning", msg, parentAction);
		}

		/**
		 * Reports a message to the server to be displayed in the page action
		 */
		public function reportEvent(msg:String, parentAction:String = null):void
		{
			ExternalInterface.call("dynaTrace.reportEvent", msg, parentAction);
		}

		/**
		 * Indicates the start of a third party resource. type can be 'i' for an image,
		 * 's' for a script or 'c' for a custom resource. See also the constants provided
		 * by this class.
		 */
		public function startThirdParty(type:String, url:String):void
		{
			ExternalInterface.call("dynaTrace.startThirdParty", type, url);
		}

		/**
		 * Indicates the when a third party resource is loaded.
		 */
		public function stopThirdParty(url:String, success:Boolean, start:Number = -1, stop:Number = -1):void
		{
			ExternalInterface.call("dynaTrace.stopThirdParty", url, success, start, stop);
		}

		/* ********************************/
		/* utility functions              */
		/* ********************************/

		/**
		 * Returns true if the DynaTrace ADK is available, false otherwise
		 */
		public function isDynaTraceAdkAvailable():Boolean
		{
			var adkJSObject:Object = ExternalInterface.call("function() { return dynaTrace; }");
			return adkJSObject != null;
		}

		/**
		 * Returns true if the DynaTrace Agent is available, false otherwise
		 */
		public function isDynaTraceAgentAvailable():Boolean
		{
			var dtAgentExists:Boolean = ExternalInterface.call("function() { return typeof dT_ != 'undefined'; }");
			return dtAgentExists;
		}

		/**
		 * Returns the JavaScript timestamp
		 */
		public function getJavaScriptTime():String
		{
			return ExternalInterface.call("function() { return new Date().getTime(); }");
		}

		/**
		 * Utility function to set an additional header that allows the dynaTrace
		 * agent to attach the events to the correct page actions. Needs to be executed
		 * on all UrlRequest objects that should be tracked in DynaTrace.
		 */
		public function prepareURLRequest(request:URLRequest):URLRequest
		{
			request.method = URLRequestMethod.POST;
			request.requestHeaders.push(new URLRequestHeader("x-dtReferer", getCurrentUrl()));
			// ugly hack
			var formVars:URLVariables = new URLVariables();
			formVars.dt = "1";
			request.data = formVars;
			// end ugly hack
			return request;
		}

		/**
		 * Returns the url of the current page
		 */
		public function getCurrentUrl():String
		{
			return ExternalInterface.call('window.location.href.toString');
		}

		private function trim(string:String):String
		{
			return string.replace(/^([\s|\t|\n]+)?(.*)([\s|\t|\n]+)?$/gm, "$2");
		}
	}
}