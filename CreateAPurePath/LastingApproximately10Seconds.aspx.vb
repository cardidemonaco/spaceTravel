
Partial Class CreateAPurePath_LastingApproximately10Seconds
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Threading.Thread.Sleep(10000) 'ms
    End Sub
End Class
