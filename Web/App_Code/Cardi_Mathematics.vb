Imports Microsoft.VisualBasic

Public Class Cardi_Mathematics

    Private a As Decimal = 1000

    Public Function add(x As Decimal, y As Decimal) As Decimal
        sleep()
        Return x + y
    End Function

    Public Function subtract(x As Decimal, y As Decimal) As Decimal
        sleep()
        Return x - y
    End Function

    Public Function multiply(x As Decimal, y As Decimal) As Decimal
        sleep()
        Return x * y
    End Function

    Public Function divide(x As Decimal, y As Decimal) As Decimal
        sleep()
        Return x / y
    End Function

    Public Function sleep() As Decimal
        Threading.Thread.Sleep(a)
        Return a
    End Function

End Class
