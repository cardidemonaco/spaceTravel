
Partial Class CreateAPurePath_WithADatabaseQuery
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load


    End Sub


    Protected Sub btnPresidents_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnPresidents.Click

        Dim dc As New DataClassesDataContext

        Dim q As Object
        If txtName.Text <> "" Then
            q = (From p In dc.potus
                          Where p.president_name_common.Contains(txtName.Text))
        Else
            q = (From p In dc.potus)
        End If

        gvPresidents.DataSource = q
        gvPresidents.DataBind()

    End Sub


    'Protected Sub btnSubmitRandom_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSubmitRandom.Click

    '    Dim q As String = "SELECT * FROM potus WHERE president_name_common = '" + txtWhere.Text + "'"

    '    Dim conn As New System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings("cad_dt_dotnet_BlankWebsiteConnectionString").ConnectionString)
    '    Dim cmd As New System.Data.SqlClient.SqlCommand(q, conn)

    '    Try
    '        conn.Open()
    '        cmd.ExecuteNonQuery()

    '        txtResults.Text = cmd.ExecuteScalar()
    '    Catch ex As Exception
    '        If Not conn Is Nothing Then
    '            conn.Close()
    '        End If
    '    End Try

    'End Sub
End Class
