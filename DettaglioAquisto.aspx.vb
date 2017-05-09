Imports System.Data
Imports System.Data.SqlClient
Imports System.Data.Sql
Imports System.Web
Imports System.Web.UI
Imports System.Xml



Public Class DettaglioAquisto
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load


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
        SqlDataSource1.SelectCommand = "SELECT ID, NomeProdotto, DescrizioneProdotto, PrezzoProdotto,DataInserimento, DataScadenza, Data, Quantità FROM aProdotti WHERE id=" + Request.QueryString("ID").ToString
        'GridView1.DataSource = cmd.ExecuteReader()
        'GridView1.DataBind()
        '










        '----------------------------
        ' Funzione
        ' Counter totale cash carrello
        Dim cons As SqlConnection
        Dim cmds As SqlCommand
        cons = New SqlConnection("Data Source=NBK012\ARPASQL;Initial Catalog=aCommerceDB;Integrated Security=True")
        cons.Open()
        cmds = New SqlCommand("SELECT SUM(prezzofloat) FROM Carrello", cons)
        Dim drs As SqlDataReader
        drs = cmds.ExecuteReader()
        drs.Read()
        'TextBox3.Text = drs(0).ToString
        Label1.Text = drs(0).ToString
        '------------------------------
        cons.Close()











    End Sub

    Protected Sub ImageButton2_Click(sender As Object, e As System.Web.UI.ImageClickEventArgs) Handles ImageButton2.Click
        Response.Redirect("HomePage.aspx")
    End Sub

    Protected Sub ImageButton5_Click(sender As Object, e As System.Web.UI.ImageClickEventArgs) Handles ImageButton5.Click
        Response.Redirect("Catalogo.aspx")
    End Sub

    Protected Sub ImageButton3_Click(sender As Object, e As System.Web.UI.ImageClickEventArgs) Handles ImageButton3.Click
        Response.Redirect("UserProfile.aspx")
    End Sub

    Protected Sub ImageButton4_Click(sender As Object, e As System.Web.UI.ImageClickEventArgs) Handles ImageButton4.Click
        Response.Redirect("SettingsVersion1.aspx")
    End Sub

    Protected Sub SqlDataSource1_Selecting(sender As Object, e As System.Web.UI.WebControls.SqlDataSourceSelectingEventArgs) Handles SqlDataSource1.Selecting

    End Sub

    Protected Sub ImageButton7_Click(sender As Object, e As System.Web.UI.ImageClickEventArgs) Handles ImageButton7.Click


        ' SE AGGIUNGO AL CARRELLO DA QUESTO BUTTON, DEVO DISATTIVARE LA FUNZIONE DAL PAGE LOAD DI CARRELLO1.ASPX



        ' ImageButton "COMPRA/AGGIUNGI AL CARRELLO"

        'SqlDataSource1.SelectCommand = "INSERT INTO"

        'SqlDataSource1.SelectCommand = "COMANDO SQL"


        '----------------------------------------------------------------------------------


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


        'Dim nome As String
        'nome = SqlCommand("SELECT * FROM aProdotti WHERE id=1")
        '("SELECT * FROM aProdotti WHERE id=1")

        'SqlDataSource1.InsertCommand

        'SqlCommand = "SELECT * FROM aProdotti WHERE id=1"



        ' OLD
        'SqlDataSource2.SelectCommand = "INSERT INTO [Carrello] (ID) VALUES('" + Request.QueryString("ID").ToString + "')"


        ' TEST



        'SqlDataSource1.SelectCommand = "INSERT INTO Carrello (ID,Nome,PrezzoFloat) SELECT Id,NomeProdotto, PrezzoProdotto FROM aProdotti WHERE ID='" + Request.QueryString("ID").ToString + "'"

        'Response.Redirect("Carrello1.aspx?ID={0}")



        'Response.Redirect("")



        ' Test ---  ID / NomeProdotto / PrezzoProdotto
        'SqlDataSource1.SelectCommand = "SELECT NomeProdotto, PrezzoProdotto FROM aCarrello WHERE id=1"



        'SqlDataSource1.SelectCommand = "INSERT INTO [Carrello] (ID) VALUES('899')"


        'GridView1.DataSource = cmd.ExecuteReader()
        'GridView1.DataBind()
        '
        '


        '--------------------------------------------------------------------------------------------------------


        '' Hash table by aspitalia zaini
        ''Dim collezione As New Hashtable()
        ''collezione("name") = "Emanuel"

        '' Carrello

        '' Page Load

        ''-------------------------------------------Connessione---------------------------------------------------------------
        'Dim con1 As SqlConnection
        '' al momento non utilizzato
        ''Dim cmd As SqlCommand
        ''Dim str As String
        'con1 = New SqlConnection("Data Source=NBK012\ARPASQL;Initial Catalog=aCommerceDB;Integrated Security=True")
        ''---------------------------------------Reader + Comando Sql----------------------------------------------------------
        'con1.Open()
        ''-------------------------------------------Popolamento textbox--------------------------------------------------------
        ''TextBox1.Text = dr(0).ToString
        ''TextBox3.Text = dr(2).ToString
        ''----------------------------------------------------------------------------------------------------------------------
        '' Output in gridview
        ''cmd.ExecuteReader()

        ''SqlDataSource1.SelectCommand = "CREATE TABLE TableX (ID int,Nome varchar(255)))"

        '' Aggiunge al carrello dal ID
        'SqlDataSource1.SelectCommand = "INSERT INTO [Carrello] (ID) VALUES('" + Request.QueryString("ID").ToString + "')"



        '' Test
        ''SqlDataSource1.SelectCommand = "INSERT INTO [Carrello] (ID), (NomeProdotto), (PrezzoProdotto) VALUES('" + Request.QueryString("ID").ToString + "' )"


        ''SqlDataSource1.SelectCommand = "INSERT INTO [Carrello] (ID) VALUES('899')"


        ''GridView1.DataSource = cmd.ExecuteReader()
        ''GridView1.DataBind()
        ''
        ''
        ''Response.Redirect("VediCarrello.aspx")



    End Sub

    Protected Sub DetailsView1_PageIndexChanging(sender As Object, e As System.Web.UI.WebControls.DetailsViewPageEventArgs) Handles DetailsView1.PageIndexChanging

    End Sub

    Protected Sub ImageButton6_Click(sender As Object, e As System.Web.UI.ImageClickEventArgs) Handles ImageButton6.Click
        Response.Redirect("Vendita.aspx")
    End Sub

    Protected Sub ImageButton8_Click(sender As Object, e As System.Web.UI.ImageClickEventArgs) Handles ImageButton8.Click
        Response.Redirect("VediCarrello.aspx")
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

    End Sub
End Class