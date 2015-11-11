
Partial Class Methods_TryMethods
    Inherits System.Web.UI.Page

    Protected Sub btn1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn1.Click

        txtC.Text = helloThisIsCardi(txtA.Text, txtB.Text)

    End Sub


    Protected Function helloThisIsCardi(ByVal a As Integer, ByRef b As String) As String

        'Concatenate "a" and "b" and return the value
        Dim c As String = a.ToString + b

        Return c
    End Function

    Protected Sub btnClass_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnClass.Click


       


    End Sub
End Class
