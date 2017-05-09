Imports System.Data
Imports System.Data.SqlClient
Imports System.Data.Sql
Imports System.Web
Imports System.Web.UI
Imports System.Xml




Public Class Test1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click


        ' Hash table by aspitalia zaini
        'Dim collezione As New Hashtable()
        'collezione("name") = "Emanuel"

        ' Carrello

        ' Page Load

        '-------------------------------------------Connessione---------------------------------------------------------------
        Dim con1 As SqlConnection
        ' al momento non utilizzato
        'Dim cmd As SqlCommand
        'Dim str As String
        con1 = New SqlConnection("Data Source=NBK012\ARPASQL;Initial Catalog=aCommerceDB;Integrated Security=True")
        '---------------------------------------Reader + Comando Sql----------------------------------------------------------
        con1.Open()
        '-------------------------------------------Popolamento textbox--------------------------------------------------------
        'TextBox1.Text = dr(0).ToString
        'TextBox3.Text = dr(2).ToString
        '----------------------------------------------------------------------------------------------------------------------
        ' Output in gridview
        'cmd.ExecuteReader()

        'SqlDataSource1.SelectCommand = "CREATE TABLE TableX (ID int,Nome varchar(255)))"

        'SqlDataSource1.SelectCommand = "INSERT INTO [Carrello] (ID) VALUES('" + Request.QueryString("ID").ToString + "')"


        SqlDataSource1.SelectCommand = "INSERT INTO [Carrello] (ID) VALUES('444')"


        'GridView1.DataSource = cmd.ExecuteReader()
        'GridView1.DataBind()
        '
        '







    End Sub
End Class