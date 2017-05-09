Imports System.Data
Imports System.Data.SqlClient
Imports System.Data.Sql
Imports System.Web
Imports System.Web.UI
Imports System.Xml

' Imports



Public Class VediCarrello
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load


        ' Page load di Vedi Carrello

        ' Dal id mostro Nome e descrizione

        'GridView1.Visible = True

        '----------------------------
        ' Funzione
        ' Counter totale item nel db
        Dim con2 As SqlConnection
        Dim cmd2 As SqlCommand
        con2 = New SqlConnection("Data Source=NBK012\ARPASQL;Initial Catalog=aCommerceDB;Integrated Security=True")
        con2.Open()
        'cmd2 = New SqlCommand("SELECT NomeProdotto, DescrizioneProdotto FROM aProdotti WHERE ID = '" + GridView1.ID.ToString + "')", con2)
        'cmd2 = New SqlCommand("SELECT NomeProdotto, DescrizioneProdotto FROM aProdotti WHERE ID = '" + GridView1. + "'", con2)
        Dim dr As SqlDataReader


        ' Test
        'dr = cmd2.ExecuteReader()
        'dr.Read()


        ' Test
        'TextBox1.Text = dr(0).ToString
        'TextBox2.Text = dr(1).ToString
        '------------------------------




        con2.Close()





        '--------------------------------------------------------------------------------------------




        '' Test


        ''-------------------------------------------Connessione---------------------------------------------------------------
        'Dim con3 As SqlConnection

        '' al momento non utilizzato
        ''Dim cmd As SqlCommand

        ''Dim str As String
        'con3 = New SqlConnection("Data Source=NBK012\ARPASQL;Initial Catalog=aCommerceDB;Integrated Security=True")

        ''---------------------------------------Reader + Comando Sql----------------------------------------------------------
        'con3.Open()

        ''cmd = New SqlCommand("SELECT NomeProdotto, DescrizioneProdotto, PrezzoProdotto, Image FROM aProdotti WHERE NomeProdotto like '%" + TextBox1.Text + "%' OR DescrizioneProdotto like '%" + TextBox1.Text + "%' ", con)

        ''-------------------------------------------Popolamento textbox--------------------------------------------------------
        ''TextBox1.Text = dr(0).ToString
        ''TextBox3.Text = dr(2).ToString
        ''----------------------------------------------------------------------------------------------------------------------
        '' Output in gridview
        ''cmd.ExecuteReader()
        'SqlDataSource3.SelectCommand = "SELECT NomeProdotto, PrezzoProdotto FROM aProdotti where id = "
        ''GridView1.DataSource = cmd.ExecuteReader()
        ''GridView1.DataBind()

        '' TEST  X
        'con3.Close()

        '' Altre funzioni

        ''If GridView1.Visible = False Then

        ''Response.Write("Nessun oggetto trovato")

        '' End If








        '----------------------------
        ' Funzione
        ' Counter totale cash carrello 
        Dim cons As SqlConnection
        Dim cmds As SqlCommand
        cons = New SqlConnection("Data Source=NBK012\ARPASQL;Initial Catalog=aCommerceDB;Integrated Security=True")
        cons.Open()
        cmds = New SqlCommand("SELECT SUM(prezzofloat*quantità) FROM Carrello", cons)
        Dim drs As SqlDataReader
        drs = cmds.ExecuteReader()
        drs.Read()
        'TextBox3.Text = drs(0).ToString
        Label1.Text = drs(0).ToString
        '------------------------------
        cons.Close()























    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Response.Redirect("Catalogo.aspx")
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Response.Redirect("HomePage.aspx")
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

    Protected Sub ImageButton6_Click(sender As Object, e As System.Web.UI.ImageClickEventArgs) Handles ImageButton6.Click
        Response.Redirect("Vendita.aspx")
    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        Response.Redirect("Checkout1.aspx")
    End Sub





    Protected Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click


        ' Funzione svuota il carrello = ELIMINA TUTTA LA TABELLA







        ''----------------------------
        ' '' Funzione

        'Dim con3 As SqlConnection
        'Dim cmd3 As SqlCommand
        'con3 = New SqlConnection("Data Source=NBK012\ARPASQL;Initial Catalog=aCommerceDB;Integrated Security=True")
        'con3.Open()
        ' ''cmd2 = New SqlCommand("SELECT NomeProdotto, DescrizioneProdotto FROM aProdotti WHERE ID = '" + GridView1.ID.ToString + "')", con2)
        'cmd3 = New SqlCommand("TRUNCATE TABLE Carrello", con3)
        ''Dim dr As SqlDataReader
        ''dr = cmd2.ExecuteReader()
        ''dr.Read()
        ''TextBox1.Text = dr(0).ToString
        ''TextBox2.Text = dr(1).ToString
        ' ''------------------------------
        'con3.Close()


        '-------------------------------------------Connessione---------------------------------------------------------------
        Dim con3 As SqlConnection

        ' al momento non utilizzato
        'Dim cmd As SqlCommand

        'Dim str As String
        con3 = New SqlConnection("Data Source=NBK012\ARPASQL;Initial Catalog=aCommerceDB;Integrated Security=True")

        '---------------------------------------Reader + Comando Sql----------------------------------------------------------
        con3.Open()

        'cmd = New SqlCommand("SELECT NomeProdotto, DescrizioneProdotto, PrezzoProdotto, Image FROM aProdotti WHERE NomeProdotto like '%" + TextBox1.Text + "%' OR DescrizioneProdotto like '%" + TextBox1.Text + "%' ", con)

        '-------------------------------------------Popolamento textbox--------------------------------------------------------
        'TextBox1.Text = dr(0).ToString
        'TextBox3.Text = dr(2).ToString
        '----------------------------------------------------------------------------------------------------------------------
        ' Output in gridview
        'cmd.ExecuteReader()
        SqlDataSource1.SelectCommand = "TRUNCATE TABLE Carrello"
        'GridView1.DataSource = cmd.ExecuteReader()
        'GridView1.DataBind()

        ' TEST  X
        con3.Close()

        ' Altre funzioni

        'If GridView1.Visible = False Then

        'Response.Write("Nessun oggetto trovato")

        ' End If


        'Response.Redirect("VediCarrello.aspx")


    End Sub

    Protected Sub Button5_Click(sender As Object, e As EventArgs) Handles Button5.Click


        ' Da Implementare
        '


        Response.Redirect("VediCarrello.aspx")


    End Sub

    'Protected Sub Button6_Click(sender As Object, e As EventArgs) Handles Button6.Click


    ' TEST AGGIORNA QUANTITA'



    ' Tasto Modifica Quantità


    'SqlDataSource4.SelectCommand = "UPDATE Carrello SET Quantità=" + TextBox2.Text + "WHERE ID=1"


    'End Sub
End Class