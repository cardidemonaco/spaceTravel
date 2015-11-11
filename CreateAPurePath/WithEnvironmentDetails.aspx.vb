Imports System.Environment

Partial Class CreateAPurePath_WithEnvironmentDetails
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        txtOperatingSystem.Text = OSVersion.Platform.ToString + " " + OSVersion.ServicePack
        txtOSVersion.Text = OSVersion.VersionString

        Dim listOfEnvVar As IDictionary = GetEnvironmentVariables()
        For Each ev As DictionaryEntry In listOfEnvVar
            lbEnvVar.Items.Add("KEY: " + ev.Key + " VALUE: " + ev.Value)
        Next

    End Sub
End Class
