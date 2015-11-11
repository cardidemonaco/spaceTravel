
Partial Class CreateAPurePath_WithAWebService2
    Inherits System.Web.UI.Page

    Protected Sub btnRoster_Click(sender As Object, e As EventArgs) Handles btnRoster.Click

        Dim ws As New EastpointeCityCouncil.EastpointeCityCouncilSoapClient

        lblRoster.Text = ws.Roster(txtDate.Text)



    End Sub
End Class
