Imports System.Data.SqlClient

Partial Class CreateAPurePath_WithPerformanceWarehouseData
    Inherits System.Web.UI.Page





    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load


        Dim c As New SqlConnection(ConfigurationManager.ConnectionStrings("dT").ConnectionString)

        c.Open()

        Dim mh As New SqlCommand("SELECT COUNT(*) FROM measurement_high", c)
        Dim mm As New SqlCommand("SELECT COUNT(*) FROM measurement_mid", c)
        Dim ml As New SqlCommand("SELECT COUNT(*) FROM measurement_low", c)

        lblMH.Text = mh.ExecuteScalar()
        lblMM.Text = mm.ExecuteScalar()
        lblML.Text = ml.ExecuteScalar()

        c.Close()

    End Sub
End Class
