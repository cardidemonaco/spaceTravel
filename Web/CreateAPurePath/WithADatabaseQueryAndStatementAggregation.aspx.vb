Imports System.Data.SqlClient

Partial Class CreateAPurePath_WithADatabaseQueryAndStatementAggregation
    Inherits System.Web.UI.Page

    Protected Sub btnSubmitRandom_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSubmitRandom.Click

        Dim conn As New SqlConnection(ConfigurationManager.ConnectionStrings("cad_dt_dotnet_BlankWebsiteConnectionString").ConnectionString)
        Dim conn2 As New SqlConnection(ConfigurationManager.ConnectionStrings("cd-dt-sql2012").ConnectionString)

        Dim cmd1 As New SqlCommand("SELECT * FROM potus", conn)
        Dim cmd2 As New SqlCommand("SELECT 'Hello, world!'", conn)
        Dim cmd3 As New SqlCommand("SELECT * FROM test")
        Dim cmd4 As New SqlCommand("SELECT * FROM test2")
        Dim cmd5 As New SqlCommand("INSERT INTO audit (" + Now.ToString + ")")

        Try
            conn.Open()
            conn2.Open()

            'SQL Statement 1 (cmd1)
            'cmd1.ExecuteNonQuery()
            cmd1.ExecuteScalar() '#1

            'SQL Statement 2 (cmd1)
            cmd1.ExecuteNonQuery() '#2
            cmd1.ExecuteScalar() '#3

            'SQL Statement 3 (cmd2)
            cmd2.ExecuteNonQuery() '#4
            cmd2.ExecuteScalar() '#5

            'SQL Statement 4 (cmd1)
            cmd1.ExecuteNonQuery() '#6
            cmd1.ExecuteScalar() '#7

            'SQL Statement 5 (cmd3)
            cmd3.ExecuteScalar() '#8

            'SQL Statement 6 (cmd4)
            cmd4.ExecuteScalar() '#9

            'SQL Statement 7 (cmd5)
            cmd5.ExecuteScalar() '#10


            lblLastSubmitted.Text = Now.ToString

            'Close connection
            conn.Close()
            conn2.Close()

        Catch
            conn.Close() 'Close connection
        End Try
    End Sub

    Protected Function QuerySpaceTravelDatabase() As Integer

        Dim x As Integer = 0

        Try
            Dim conn As New SqlConnection(ConfigurationManager.ConnectionStrings("cad_dt_dotnet_BlankWebsiteConnectionString").ConnectionString)
            Dim cmd As New SqlCommand("INSERT INTO audit (" + Now.ToString + ")")
            cmd.ExecuteScalar() 'Execute SQL statement
            conn.Close() 'Close connection
        Catch ex As Exception
            x = 1
        End Try

        Return x
    End Function

  
    Protected Sub btnQueryViaMethod_Click(sender As Object, e As EventArgs) Handles btnQueryViaMethod.Click

        QuerySpaceTravelDatabase()

    End Sub
End Class
