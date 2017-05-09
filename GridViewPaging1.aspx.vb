Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration



Public Class GridViewPaging1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not Me.IsPostBack Then
            Me.BindGrid()
        End If
    End Sub

    Private Sub BindGrid()
        Dim constr As String = ConfigurationManager.ConnectionStrings("constr").ConnectionString
        Using con As New SqlConnection(constr)
            Using cmd As New SqlCommand("SELECT Id, NomeProdotto, PrezzoProdotto FROM aProdotti ORDER BY PrezzoProdotto ASC")
                Using sda As New SqlDataAdapter()
                    cmd.Connection = con
                    sda.SelectCommand = cmd
                    Using dt As New DataTable()
                        sda.Fill(dt)
                        GridView1.DataSource = dt
                        GridView1.DataBind()
                    End Using
                End Using
            End Using
        End Using
    End Sub






    Protected Sub OnPageIndexChanging(sender As Object, e As GridViewPageEventArgs)
        GridView1.PageIndex = e.NewPageIndex
        Me.BindGrid()
    End Sub



End Class