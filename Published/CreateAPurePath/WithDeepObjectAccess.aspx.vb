Partial Class CreateAPurePath_WithDeepObjectAccess
    Inherits System.Web.UI.Page

    Shared eastpointe As New LocalGovernment

    Public Class LocalGovernment
        Private currentMayor As String
        Private currentManager As String
        Private currentCouncil As New ArrayList

        Property mayor() As String
            Get
                Return currentMayor
            End Get
            Set(value As String)
                currentMayor = value
            End Set
        End Property

        Property manager() As String
            Get
                Return currentManager
            End Get
            Set(value As String)
                currentManager = value
            End Set
        End Property

        Property council() As String
            Get
                Dim cc As String = ""
                For Each person As String In currentCouncil
                    cc += person + "; "
                Next
                Return cc
            End Get
            Set(value As String)
                currentCouncil.Add(value)
            End Set
        End Property

    End Class

    Function printCouncil(ByVal council As ArrayList) As String
        Dim size As Integer = council.Count()
        Dim councilString = ""
        For Each member As String In council
            councilString += member + "<br/>"
        Next

        Return size.ToString + ";" + councilString
    End Function

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
  

    End Sub

    Protected Sub btnMayor_Click(sender As Object, e As EventArgs) Handles btnMayor.Click
        eastpointe.mayor = txtMayor.Text
        lblMayor.Text = eastpointe.mayor
    End Sub

    Protected Sub btnCouncilAdd_Click(sender As Object, e As EventArgs) Handles btnCouncilAdd.Click
        eastpointe.council = txtCouncilAdd.Text 'Add a City Council person in Eastpointe
        lblCouncil.Text = eastpointe.council
    End Sub

    Protected Sub btnPrintCouncil_Click(sender As Object, e As EventArgs) Handles btnPrintCouncil.Click

        'Set up the current council in an ArrayList
        Dim c As New ArrayList
        c.Add("Suzanne Pixley")
        c.Add("Phil Guastella")
        c.Add("Wendy Richardson")
        c.Add("Ronnie Laforest")
        c.Add("Cardi DeMonaco Jr")

        lblPrintCouncil.Text = printCouncil(c)

        Dim a As String = c.Item(0)

    End Sub
End Class
