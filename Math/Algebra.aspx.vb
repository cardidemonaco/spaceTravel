
Partial Class Math_Algebra
    Inherits System.Web.UI.Page

    Protected Sub btnAdd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnAdd.Click
        Threading.Thread.Sleep(txtDelay.Text)
        lblSum.Text = Decimal.Add(txtAdd1.Text, txtAdd2.Text)
    End Sub

    Protected Sub btnFloor_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnFloor.Click



        Threading.Thread.Sleep(txtDelay.Text)


        txtFloor.Text = Decimal.Floor(txtFloor.Text)
        txtFloor.Text = Decimal.Floor(txtFloor.Text + 1)

    End Sub
End Class
