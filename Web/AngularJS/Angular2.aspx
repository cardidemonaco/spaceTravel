<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Angular2.aspx.vb" Inherits="AngularJS_Angular2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <script type="text/javascript" src="../Script/angular.min.js"></script>
    <script type="text/javascript" src="script.js"></script>

    <script type="text/javascript">

        function StoreController() {
            alert('Welcome, Cardi!');
        }

    </script>

    <script type="text/javascript">
        function getSpacetravel() {
            //$http.get('http://spacetravel.clients.nasa.cpwr.corp', config).then(successCallback, errorCallback);
        }
        

    </script>

</head>
<body>
  
    <div ng-app="httpExample">
            <div ng-controller="FetchController">
              <select ng-model="method" aria-label="Request method">
                <option>GET</option>
                <option>JSONP</option>
              </select>
              <input type="text" ng-model="url" size="80" aria-label="URL" />
              <button id="fetchbtn" ng-click="fetch()">fetch</button><br>
              <button id="samplegetbtn" ng-click="updateModel('GET', 'http-hello.html')">Sample GET</button>
              <button id="samplejsonpbtn"
                ng-click="updateModel('JSONP',
                              'https://angularjs.org/greet.php?callback=JSON_CALLBACK&name=Super%20Hero')">
                Sample JSONP
              </button>
              <button id="invalidjsonpbtn"
                ng-click="updateModel('JSONP', 'https://angularjs.org/doesntexist&callback=JSON_CALLBACK')">
                  Invalid JSONP
                </button>
              <pre>http status code: {{status}}</pre>
              <pre>http response data: {{data}}</pre>
            </div>
        </div>

</body>
</html>
