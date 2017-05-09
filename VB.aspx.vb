Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration



Partial Class VB
    Inherits System.Web.UI.Page




    Protected Sub Page_Init(sender As Object, e As System.EventArgs) Handles Me.Init



        Dim constr As String = ConfigurationManager.ConnectionStrings("constr").ConnectionString
        Using con As New SqlConnection(constr)
            Using cmd As New SqlCommand("SELECT ID,NomeProdotto,DescrizioneProdotto,PrezzoProdotto FROM aProdotti")
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



    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Me.IsPostBack Then
            Me.BindGrid()
        End If
    End Sub


    ' Metodo BindGrid contenente connection string , cmd, data table e grid view source + bind 
    Protected Sub BindGrid()
        Dim constr As String = ConfigurationManager.ConnectionStrings("constr").ConnectionString
        Using con As New SqlConnection(constr)
            Using cmd As New SqlCommand("SELECT ID,NomeProdotto,DescrizioneProdotto,PrezzoProdotto FROM aProdotti  ORDER BY PrezzoProdotto ASC")
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




    Protected Sub Button1_Click(sender As Object, e As System.EventArgs) Handles Button1.Click


        BindGrid()




    End Sub
End Class
