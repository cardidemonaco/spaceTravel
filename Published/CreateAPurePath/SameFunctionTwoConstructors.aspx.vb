
Partial Class CreateAPurePath_SameFunctionTwoConstructors
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        addTogether(2, 2)
        addTogether(2, 1, 1)

    End Sub


    Public Function addTogether(a As Integer, b As Integer) As Integer
        Return a + b
    End Function

    Public Function addTogether(a As Integer, b As Integer, c As Integer) As Integer
        Return a + b + c
    End Function

    Public Function addTogether(a As Integer, b As Integer, c As Integer, d As Integer) As Integer
        Return a + b + c + d
    End Function

End Class


