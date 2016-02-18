Imports Microsoft.VisualBasic

Public Class Cardi

    Private a As String
    Private b As String

    Property GetA() As String
        Get
            Return a
        End Get
        Set(ByVal value As String)
            a = value
        End Set
    End Property


    Public Function GetAPlusB(ByVal a As String, ByVal b As String) As String
        Return a + b
    End Function


End Class
