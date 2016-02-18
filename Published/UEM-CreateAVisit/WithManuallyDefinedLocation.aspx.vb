Imports System
Imports System.Net
Imports System.IO
Imports System.Security.Policy

Partial Class WithManuallyDefinedLocation
    Inherits System.Web.UI.Page

    Protected Sub Page_Init(sender As Object, e As EventArgs) Handles Me.Init
        'Request.Headers.Add("rproxy_remote_address", "12.107.188.34")
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        'Fake IPs using Country Codes...
        '22.0.0.1 = United States of America


        'Response.Headers.Add("rproxy_remote_address", "12.107.188.30")

        'Using http://www.ipligence.com/geolocation for IPs





    End Sub

    Protected Sub Page_PreLoad(sender As Object, e As EventArgs) Handles Me.PreLoad

        'Request.Headers.Add("rproxy_remote_address", "12.107.188.32")


    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        ''Run more tests
        Dim a As WebRequest



        ''Request Headers
        a.Headers.Add("rproxy_remote_address", "12.107.188.41")


        ''Response Headers? (can I even do this? Don't think it makes sense)
        'For Each h As HeaderElement In Response.Headers
        '    a.Headers.Add(h.Name, h.Value)
        'Next


        a.GetResponse.GetResponseStream()



    End Sub
End Class
