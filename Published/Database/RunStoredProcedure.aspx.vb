
Partial Class Database_RunStoredProcedure
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnSp_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSp.Click

        Dim conn As New System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings("cad_dt_dotnet_BlankWebsiteConnectionString").ConnectionString)
        conn.Open()

        Dim cmd1 As New System.Data.SqlClient.SqlCommand("EXEC [dbo].[Sp_Cardi] 22,'Goodbye me'", conn)
        cmd1.ExecuteScalar()


        Dim cmd2 As New System.Data.SqlClient.SqlCommand("Sp_Cardi", conn)
        cmd2.CommandType = System.Data.CommandType.StoredProcedure
        cmd2.Parameters.Add(New System.Data.SqlClient.SqlParameter("@p1", System.Data.SqlDbType.Int, 5)).Value = 3
        cmd2.Parameters.Add(New System.Data.SqlClient.SqlParameter("@p2", System.Data.SqlDbType.Char, 5)).Value = "asdf"
        cmd2.ExecuteScalar()



        'Cmd.Parameters.Add(New SqlParameter("@sub_menu", SqlDbType.Char, 5)).Value = "Joe"

        'Dim sqlCmd As New SqlCommand
        'sqlCmd.Connection = Connection.sqlConn
        'sqlCmd.CommandType = CommandType.StoredProcedure
        'sqlCmd.CommandText = "prcGet_sub_menu_list"
        'sqlCmd.Parameter.Add("menuCode", SqlDbType.Char)

        'SQL Statement 1 (cmd1)
        'cmd1.ExecuteNonQuery()



    End Sub
End Class
