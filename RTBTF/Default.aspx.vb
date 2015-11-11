
Partial Class RealTimeBusinessTransactionsFeed_Default
    Inherits System.Web.UI.Page

    ''Protobuf definition
    '//After changing something in this class, the corresponding java class has to be re-generated using protoc. see generateBtExportClass.bat in the projects root directory.
    '//The required binaries can be downloaded from: http://code.google.com/p/protobuf/downloads/list

    'option java_package = "com.dynatrace.diagnostics.core.realtime.export";

    'option optimize_for = SPEED;

    'package export.bt;

    'message BusinessTransactions {
    '	repeated BusinessTransaction businessTransactions = 1;
    '	optional int32 lostTransactions = 2;
    '}

    'message BusinessTransaction {
    '	required string name = 1;
    '	enum Type {
    '		PUREPATH = 0;
    '		PAGE_ACTION = 1;
    '		VISIT = 2;
    '	}
    '	optional Type type = 2;
    '	optional string application = 3;
    '	repeated string measureNames = 4;
    '	repeated string dimensionNames = 5;
    '	repeated BtOccurrence occurrences = 6;
    '}

    'message BtOccurrence {
    '	required int64 startTime = 1;				//java time stamp
    '	optional int64 endTime = 2;					//java time stamp
    '	optional string purePathId = 5; 
    '	repeated double values = 6;
    '	repeated string dimensions = 7;
    '	optional string actionName = 8;
    '	optional string url = 9;
    '	optional string query = 10; 				//not set currently
    '	optional int64 visitId = 11;
    '	optional string user = 12;
    '	optional double apdex = 13;
    '	optional bool converted = 14;
    '	optional double responseTime = 15;			//ms
    '	optional double cpuTime = 16;				//ms
    '	optional double syncTime = 17;				//ms
    '	optional double waitTime = 18;				//ms
    '	optional double suspensionTime = 19;		//ms
    '	optional double execTime = 20;				//ms
    '	optional double duration = 21;				//ms
    '	optional bool failed = 22;

    '	optional int32 nrOfActions = 23;
    '	optional string clientFamily = 24;
    '	optional string clientIP = 25;
    '	optional string continent = 26;
    '	optional string country = 27;
    '	optional string city = 28;
    '	optional int32 failedActions = 29;
    '	optional int32 clientErrors = 30;
    '	optional bool exitActionFailed = 31;
    '	optional bool bounce = 32;
    '	optional string osFamily = 33;
    '	optional string osName = 34;
    '	optional string connectionType = 35;
    '	repeated string convertedBy = 36;

    '	optional double clientTime = 37;			//ms
    '	optional double networkTime = 38;			//ms
    '	optional double serverTime = 39;			//ms
    '	optional int32 urlRedirectionTime = 40;		//ms
    '	optional int32 dnsTime = 41;				//ms
    '	optional int32 connectTime = 42;			//ms
    '	optional int32 sslTime = 43;				//ms
    '	optional int32 documentRequestTime = 44;	//ms
    '	optional int32 documentResponseTime = 45;	//ms
    '	optional int32 processingTime = 46;			//ms

    '}


    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        Try
            Dim str As System.IO.Stream, strmContents As String = ""
            Dim counter, strLen, strRead As Integer


            ' Create a Stream object.
            str = Request.InputStream
            ' Find number of bytes in stream.
            strLen = CInt(str.Length)
            ' Create a byte array. 
            Dim strArr(strLen) As Byte
            ' Read stream into byte array.
            strRead = str.Read(strArr, 0, strLen)

            ' Convert byte array to a text string. 
            For counter = 0 To strLen - 1
                strmContents = strmContents & strArr(counter).ToString()
            Next counter



            Dim dc As New DataClassesDataContext

            Dim feed As New RTBTF

            Response.Write(strmContents)
            feed.rtbtf_raw = TryCast(strmContents, String)
            feed.rtbtf_datetime = Now

            dc.RTBTFs.InsertOnSubmit(feed)
            dc.SubmitChanges()

            Response.Write("<p><font color='green'>Success!!!</font></p>")

            'write to screen all previous responses
            Dim q As Object
            q = (From r In dc.RTBTFs Order By r.rtbtf_id Descending).Take(20)

            gvRTBTF.DataSource = q
            gvRTBTF.DataBind()

            'Doc links
            Dim dt As New DynatraceLinks

            Dim urlEnd = "Real+Time+Business+Transactions+Feed"
            Dim url As String = dt.urlDomain + dt.urlCommDefault + dt.urlVersion + urlEnd
            linkRTBTF.NavigateUrl = url
            linkRTBTF.Text = urlEnd
            linkRTBTF.Target = "_blank"

            Dim urlEnd2 = "Big+Data+Business+Transaction+Bridge"
            Dim url2 As String = dt.urlDomain + dt.urlCommDLs + urlEnd2
            linkBDBTB.NavigateUrl = url2
            linkBDBTB.Text = urlEnd2
            linkBDBTB.Target = "_blank"




        Catch ex As Exception
            Response.Write(ex.Message)
        End Try
    End Sub
End Class
