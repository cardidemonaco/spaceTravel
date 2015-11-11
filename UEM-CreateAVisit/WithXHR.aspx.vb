
Partial Class UEM_CreateAVisit_XHR
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load



    End Sub

    Protected Sub btnXhr_Click(sender As Object, e As EventArgs) Handles btnXhr.Click

        Dim xhr As New HttpRequest("file.txt", "urlAsString", "query")



    End Sub
End Class
