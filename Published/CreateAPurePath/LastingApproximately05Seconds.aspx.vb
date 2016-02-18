
Partial Class CreateAPurePath_LastingApproximately05Seconds
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Threading.Thread.Sleep(5000) 'ms
    End Sub
End Class
