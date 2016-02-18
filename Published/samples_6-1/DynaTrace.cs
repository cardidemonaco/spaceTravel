using System;
using System.Net;
using System.Windows.Browser;

namespace DynaTrace.Diagnostics.JavaScript.Adk {

    
    /// <summary>
    /// Utility class for the dynaTrace JavaScript ADK
    /// </summary>
    public class JavaScriptAdk {

        private static readonly string[] dynaTraceCookies={"dtCookie","dtPC"};    
        private ScriptObject dynaTraceObject;

        public JavaScriptAdk() {
            //check if dynatrace ADK is available
            try {
                object o = HtmlPage.Window.Eval("dynaTrace");                
                if (o != null)
                    dynaTraceObject = (ScriptObject)o;
            } catch (Exception e) {                
            }
        }

        /// <summary>
        /// invokes the given function on the dynaTrace ADK object
        /// </summary>
        /// <param name="function">name of the function to invoke</param>
        /// <param name="args">call params</param>
        /// <returns>result of the function</returns>
        private object Invoke(string function, params object[] args) {
            if (dynaTraceObject != null) {
                return dynaTraceObject.Invoke(function, args);
            } else {
                return null;
            }
        }

        /// <summary>
        /// Indicates if the dynaTrace ADK object is available.
        /// Note! Does not check if the dynatrace agent is available!
        /// </summary>
        public bool IsDynaTraceAdkAvailable {
            get { return dynaTraceObject != null; }
        }


        /// <summary>
        /// Indicates of the dynatrace JS agent is available
        /// </summary>
        public bool IsDynaTraceAgentAvailable {
            get {
                try {
                    object o = HtmlPage.Window.Eval("dT_");
                    if (o is ScriptObject)
                        return true;
                } catch (Exception e) {
                }
                return false;
            }
        }

        /// <summary>
        /// returns the current time in milliseconds from JavaScript.
        /// </summary>
        public long JavaScriptNow {
            get {
                object time = HtmlPage.Window.Eval("new Date().getTime()");
                if (time is Double) {
                    return (long)((Double)time);
                } else
                    throw new Exception("Invalid datetime returned!");
            }
        }

        

        private bool isDtHeader(string name) {
            foreach (string h in dynaTraceCookies) {
                if (h == name) {
                    return true;
                }
            }
            return false;
        }


        /// <summary>
        /// Prepares a WebRequest object so that the webrequest is correctly correlated to an action.
        /// As some browsers do not set the referer and cookie header from the current page a special dynatrace 
        /// referer is set and all dynaTrace cookies are copied onto WebRequest
        /// </summary>
        /// <param name="webRequest"></param>
        public void PrepareWebRequest(HttpWebRequest webRequest) {
            webRequest.Headers["x-dtReferer"] = HtmlPage.Document.DocumentUri.ToString();

            try {
                webRequest.CookieContainer = new CookieContainer();

                string[] cookies = HtmlPage.Document.Cookies.Split(';');
                foreach (string cookie in cookies) {
                    string[] parts = cookie.Split('=');
                    String name = parts[0].Trim();
                    if (isDtHeader(name)) {
                        //copy dynaTrace headers
                        webRequest.CookieContainer.Add(HtmlPage.Document.DocumentUri, new Cookie(name, parts[1]));
                    }
                }
            } catch (Exception e) {
            }
            
        }

        /// <summary>
        /// Prepares a WebClient object so that the webrequest is correctly correlated to an action.
        /// As some browsers do not set the referer and cookie header from the current page a special dynatrace 
        /// referer is set and all dynaTrace cookies are copied onto WebClient
        /// </summary>
        /// <param name="webClient"></param>
        public void PrepareWebClient(WebClient webClient) {            
            webClient.Headers["x-dtReferer"] = HtmlPage.Document.DocumentUri.ToString();

            string cookieHeader = webClient.Headers["Cookie"];

            string[] cookies = HtmlPage.Document.Cookies.Split(';');
            foreach (string cookie in cookies) {
                string[] parts = cookie.Split('=');
                string name = parts[0].Trim();
                string value = parts[1].Trim();
                if (isDtHeader(name)) {
                    //copy dynaTrace cookie
                    cookieHeader += "; " + name + "= " + value;                    
                }
            }

            webClient.Headers["Cookie"] = cookieHeader;
           
        }

        /*
        This function should not be used within silverlight because it is too late calling it from a silverlight app.
        When it is used, it must be called directly at the beginning of the HTML page.
         
        public void SetLoadEndManually(string parentAction=null) {            
            Invoke("setLoadEndManually",new object[]{parentAction});
        }*/


        public void SignalLoadStart(string parentAction = null) {
            Invoke("signalLoadStart", new object[] { parentAction });
        }

        public void SignalLoadEnd(string parentAction = null) {
            Invoke("signalLoadEnd", new object[] { parentAction });
        }


        public string EnterAction(string actionName, string actionType, long? time = null, string parentAction = null) {
            object res = Invoke("enterAction", actionName, actionType, time, parentAction);           
            if (res != null) {
                if (res is string) {
                    return (string)res;
                }else{
                    return (string)((ScriptObject)res).GetProperty("StringValue");
                }
            } else {
                return null;
            }
        }

        public void LeaveAction(string name) {
            Invoke("leaveAction", name);
        }

        public void ReportError(string error, string parentAction = null) {
            Invoke("reportError", error, parentAction);
        }

        public void ReportWarning(string warning, string parentAction = null) {
            Invoke("reportWarning", warning, parentAction);
        }

        public void ReportEvent(string msg, string parentAction = null) {
            Invoke("reportEvent", msg, parentAction);
        }

        public void StartThirdParty(string type, string url) {
            Invoke("startThirdParty", type, url);
        }

        public void StopThirdParty(string url, bool success, long? start = null, long? stop = null) {
            Invoke("stopThirdParty", url, success, start, stop);
        }
    }
}
