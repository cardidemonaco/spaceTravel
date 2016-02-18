'ORDER OF PROCESSING:
'OnPreInit
'OnInit
'OnInitComplete
'OnPreLoad
'OnLoadComplete
'OnPreRenderComplete
'OnSaveStateComplete
'Render

Partial Class Page01IncorrectSyntax
    Inherits System.Web.UI.Page

    Protected Sub Page_PreInit(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.PreInit

        'Sleep for 5 seconds to see if it shows in the PurePath
        'http://msdn.microsoft.com/en-us/library/system.threading.thread.sleep(v=vs.71).aspx
        Threading.Thread.Sleep(500)




    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        'Call a random function to see how that works in dynaTrace
        'MsgBox(multiplyBy2(4.2))
        Dim x As Double = multiplyBy2(4.2)
        Response.Write(x.ToString + " | ")

        multiplyBy2Sub(7)
        Response.Write(x.ToString + " | ")

        Dim m As New multiplyBy2Again
        x = m.multiplyBy2(10)
        Response.Write(x.ToString + " | ")

    End Sub

    Public Function multiplyBy2(ByVal num As Double) As Double
        Threading.Thread.Sleep(500)
        Return num * 2
    End Function


    Public Sub multiplyBy2Sub(ByVal num As Double)
        num = num * 2
        Threading.Thread.Sleep(500)
    End Sub


End Class
