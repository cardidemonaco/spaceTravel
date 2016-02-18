
Partial Class Cookies
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        Response.Cookies("cardi")("full-name") = "Cardi DeMonaco Jr"
        Response.Cookies("cardi")("secret") = "42"

        Response.Cookies("alysa")("full-name") = "Alysa Marie Diebolt"

        'Can a duplicate Cookie be created?
        Dim dupCookie As New HttpCookie("duplicate", "asdf")
        Response.Cookies.Add(dupCookie)
        Response.Cookies.Add(dupCookie)

        Response.Cookies("singleAttribute").Value = "123"
        Response.Cookies("singleAttribute2").Value = "456"
        Response.Cookies("singleAttribute3").Value = "789"

        ''Code is in button click
        'If IsPostBack Then
        '    Response.Cookies(txtCookieName.Text).Value = txtCookieValue.Text
        'End If

    End Sub



    Protected Sub btnSetCookies_Click(sender As Object, e As EventArgs) Handles btnSetCookies.Click

        'Print all cookies
        lblCardi.Text = "cardi|full-name: " + Response.Cookies("cardi")("full-name").ToString

        Try
            'Get Request dtCookie
            Dim dtCookieRequest As HttpCookie = Request.Cookies("dtCookie")
            lblDtCookieRequest.Text = "Request dtCookie: " + dtCookieRequest.Value
        Catch ex As Exception
            lblDtCookieRequest.Text = "DID NOT READ COOKIE PROPERLY"
            lblDtCookieRequest.ForeColor = Drawing.Color.Red
        End Try

        Try
            'Get Response dtCookie
            Dim dtCookieResponse As HttpCookie = Response.Cookies("dtCookie")
            lblDtCookieResponse.Text = "Response dtCookie: " + dtCookieResponse.Value
        Catch ex As Exception
            lblDtCookieResponse.Text = "DID NOT READ COOKIE PROPERLY"
            lblDtCookieResponse.ForeColor = Drawing.Color.Red
        End Try

    End Sub


    Protected Sub txtCreateNewCookie_Click(sender As Object, e As EventArgs) Handles txtCreateNewCookie.Click

        Response.Cookies(txtCookieName.Text).Value = txtCookieValue.Text

    End Sub
End Class
