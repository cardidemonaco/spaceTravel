Imports System
Imports System.Net
Imports System.IO

Partial Class AddingHttpTag
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        Dim dt As New DynatraceLinks
        Dim urlEnd = "Integration+with+Web+Load+Testing+and+Monitoring+Tools"
        Dim url As String = dt.urlDomain + dt.urlCommDefault + dt.urlVersion + urlEnd
        linkLoadTesting.NavigateUrl = url
        linkLoadTesting.Text = urlEnd
        linkLoadTesting.Target = "_blank"

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        '==TEST 1==

        'Setup the Web Request
        Dim r As WebRequest
        r = WebRequest.Create("http://" + txtHost.Text + "/Pages/Page01.aspx")

        'Add dynaTrace Header / HTTP Header
        'NA=DR_S04_VS5_NoSnS_02_OrdNotif;PC=on
        'NA=ADMIN_S15_CntrctSrch_T01_HomePage;PC=login.portal;VU=1;ID=1398380276882
        'NA=[value];PC=[value]
        r.Headers.Add("X-dynatrace:NA=spaceTravel-LoadTest;PC=a")

        'Actually run the Web Request
        Dim s As Stream
        s = r.GetResponse.GetResponseStream

        'Run more tests
        Dim a = WebRequest.Create("http://" + txtHost.Text + "/Pages/Page02.aspx")
        a.Headers.Add("X-dynatrace:NA=spaceTravel-LoadTest;PC=b")
        a.Headers.Add("Hello:World")
        a.GetResponse.GetResponseStream()

        Dim b = WebRequest.Create("http://" + txtHost.Text + "/Pages/Page03.aspx")
        b.Headers.Add("X-dynatrace:NA=spaceTravel-LoadTest;PC=c")
        b.GetResponse.GetResponseStream()


        '==TEST 2==

        'Get values
        Dim na As String = txtNA.Text
        Dim pc As String = txtPC.Text

        'Run more tests
        Dim x = WebRequest.Create("http://" + txtHost.Text + "/Pages/Page02.aspx")
        x.Headers.Add("X-dynatrace:NA=" + na + ";PC=" + pc)
        x.Headers.Add("Hello:World")
        x.GetResponse.GetResponseStream()

        Dim y = WebRequest.Create("http://" + txtHost.Text + "/Pages/Page03.aspx")
        y.Headers.Add("X-dynatrace:NA=" + na + ";PC=" + pc)
        y.GetResponse.GetResponseStream()

        Dim z = WebRequest.Create("http://" + txtHost.Text + "/Pages/Page01.aspx")
        z.Headers.Add("X-dynatrace:VU=1;PC=.1;ID=4;NA=ListResults")
        z.GetResponse.GetResponseStream()

    End Sub

   
End Class
