
Partial Class CreateAPurePath_WithAWebService
    Inherits System.Web.UI.Page

    Protected Sub btnCalcSalesTax_Click(sender As Object, e As EventArgs) Handles btnCalcSalesTax.Click

        Dim ws As New SalesTaxCalculator.SalesTaxCalculatorSoapClient
        Dim salesTax As Decimal

        Try

            salesTax = ws.CalculateSalesTax(txtAmount.Text)
            txtSalesTax.Text = salesTax
            txtTotal.Text = txtAmount.Text + salesTax

        Catch ex As Exception

        End Try

        'Perform Sales Tax calculation a second time (for no reason)
        ws.CalculateSalesTax(txtAmount.Text)

        '7%
        ws.CalculateSalesTaxUsingPercentage(txtAmount.Text, 7)
        Dim amt As Double = txtAmount.Text
        txtSalesTax7.Text = amt * 0.07
        txtTotal7.Text = amt * 1.07

        'one more web service...
        txtDouble.Text = ws.DoubleMe(txtAmount.Text)

    End Sub
End Class
