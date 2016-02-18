Imports System.Threading
Imports System.Threading.Thread

Partial Class DynamicPause
    Inherits System.Web.UI.Page


    Protected Sub btnWait_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnWait.Click
        txtMessage.Text = "...Waiting..."
        Dim w As Thread = New Thread(AddressOf waiting) 'Call Waiting function - waiting()
        w.Start()

    End Sub

    Public Function waiting() As String
        Dim sec As Integer = txtSeconds.Text 'Get amount of seconds from User in Textbox
        Sleep(sec * 1000) 'Put this thread to sleep
        Dim msg As String = "DONE! DONE! DONE!" 'Why does this not stick?
        txtMessage.Text = msg
        Return msg
    End Function



End Class
