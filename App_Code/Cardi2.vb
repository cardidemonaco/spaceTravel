Imports Microsoft.VisualBasic

Partial Class Cardi2
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

    Public Function add(x As Decimal, y As Decimal) As Decimal
        sleep()
        Return x + y
    End Function

    Public Function sleep() As Decimal
        Threading.Thread.Sleep(a)
        Return a
    End Function

End Class
