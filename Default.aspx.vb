
Partial Class DefaultHome
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        Try

            If Not IsPostBack Then
                'Reload Grid View for Links every time, if post back or not...
                Dim dc As New DataClassesDataContext
                Dim allLinks As Object = From l In dc.links Select l.link_name, l.link_url
                gvLinks.DataSource = allLinks
                gvLinks.DataBind()
            End If

        Catch ex As Exception

        End Try



    End Sub

    Protected Sub btnLinkNew_Click(sender As Object, e As EventArgs) Handles btnLinkNew.Click

        'Insert the new link into the database
        Dim dc As New DataClassesDataContext
        Dim newLink As New link With {.link_name = txtLinkName.Text, .link_url = txtLinkUrl.Text}
        dc.links.InsertOnSubmit(newLink)
        dc.SubmitChanges()

        'Reset the textboxes...
        txtLinkName.Text = "Link Name"
        txtLinkUrl.Text = "Link URL"

        'reload the Grid View...
        Dim allLinks As Object = From l In dc.links Select l.link_name, l.link_url
        gvLinks.DataSource = allLinks
        gvLinks.DataBind()

    End Sub
End Class
