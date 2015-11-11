
Partial Class TESTING_HttpContext
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Response.Write(HttpContext.Current.ToString())

    End Sub
End Class
