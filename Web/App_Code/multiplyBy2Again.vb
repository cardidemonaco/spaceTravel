Imports Microsoft.VisualBasic

Public Class multiplyBy2Again
    Public Function multiplyBy2(ByVal num As Double) As Double
        Threading.Thread.Sleep(500)
        Return num * 2

    End Function
End Class
