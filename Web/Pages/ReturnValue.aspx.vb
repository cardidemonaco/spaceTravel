
Partial Class Pages_ReturnValue
    Inherits System.Web.UI.Page

    Protected Sub btnGiveReturn_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnGiveReturn.Click
        txtReturn.Text = giveReturnValue(rblReturn.SelectedItem.Text)
    End Sub

    Protected Function giveReturnValue(ByVal str As String) As String
        Return str
    End Function

    Protected Sub btnInstead_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnInstead.Click
        txtReturn.Text = giveReturnValue(txtInstead.Text)
    End Sub
End Class
