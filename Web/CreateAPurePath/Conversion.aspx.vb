
Partial Class CreateAPurePath_Conversion
    Inherits System.Web.UI.Page

    Protected Sub btnAmount_Click(sender As Object, e As EventArgs) Handles btnAmount.Click

        submitRevenue(txtAmount.Text)
        lblAmount.Text += "You submitted revenue in the amount of " + txtAmount.Text + " at " + Now.ToString + "<br/>"

    End Sub

    Protected Function submitRevenue(amount As Double) As Integer

        Try

            'Create DB connection
            Dim dc As New DataClassesDataContext

            'Submit amount to database
            Dim r As New revenue
            r.revenue_amount = amount
            r.revenue_date = Now

            dc.revenues.InsertOnSubmit(r)
            dc.SubmitChanges()

        Catch ex As Exception
            Return 0
        End Try

        Return 1
    End Function

End Class
