
Partial Class CreateAPurePath_ThreadingSleep
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        'Threading.Thread.Sleep(5000) 'ms
    End Sub

    Protected Sub btnSleepLength_Click(sender As Object, e As EventArgs) Handles btnSleepLength.Click
        sleep(txtSleepLength.Text) 'ms
    End Sub

    Protected Sub sleep(ByVal ms As Integer)
        Threading.Thread.Sleep(ms) 'ms
    End Sub

End Class
