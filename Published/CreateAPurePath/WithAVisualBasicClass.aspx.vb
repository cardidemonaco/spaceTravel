
Partial Class WithAVisualBasicClass
    Inherits System.Web.UI.Page



    Protected Sub btnEquals_Click(sender As Object, e As EventArgs) Handles btnEquals.Click

        Dim c As New Cardi_Mathematics
        Dim p1 As Decimal = txtA.Text
        Dim p2 As Decimal = txtB.Text

        If ddlOperation.SelectedValue = "Add" Then
            txtAnswer.Text = c.add(p1, p2)

        ElseIf ddlOperation.SelectedValue = "Subtract" Then
            txtAnswer.Text = c.subtract(p1, p2)

        ElseIf ddlOperation.SelectedValue = "Multiply" Then
            txtAnswer.Text = c.multiply(p1, p2)

        ElseIf ddlOperation.SelectedValue = "Divide" Then
            txtAnswer.Text = c.divide(p1, p2)

        End If

    End Sub
End Class
