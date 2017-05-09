Imports System.Data
Imports System.Data.SqlClient
Imports System.Data.Sql
Imports System.Web
Imports System.Web.UI
Imports System.Xml


Public Class Carrello1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load



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

        ' Aggiunge al carrello dal ID

        'SqlDataSource1.SelectCommand = "INSERT INTO [Carrello] (ID) VALUES('" + Request.QueryString("ID").ToString + "')"



        ' FUNZIONA  -> Qui viene inserito l' oggetto da prodotti a carrello

        SqlDataSource1.SelectCommand = "INSERT INTO Carrello (ID,Nome,PrezzoFloat, Quantità) SELECT Id,NomeProdotto, PrezzoProdotto, Quantità FROM aProdotti WHERE ID='" + Request.QueryString("ID").ToString + "'"





        'SqlDataSource1.SelectCommand = "INSERT INTO Carrello "
        '----------------------------

            ' Test 2

            '

            'SqlDataSource1.SelectCommand = "INSERT INTO [Carrello] (ID), (NomeProdotto), (PrezzoProdotto) VALUES('" + Request.QueryString("ID").ToString + "' )"


            'SqlDataSource1.SelectCommand = "INSERT INTO [Carrello] (ID) VALUES('899')"


            'GridView1.DataSource = cmd.ExecuteReader()
            'GridView1.DataBind()
            '
            '
            'Response.Redirect("VediCarrello.aspx")



            ' FUNZIONE DELLA LABEL CHE INDICA IL NOME DEL PRODOTTO CHE E' STATO AGGIUNTO AL CARRELLO


        Dim con2 As SqlConnection
        Dim cmd2 As SqlCommand
        con2 = New SqlConnection("Data Source=NBK012\ARPASQL;Initial Catalog=aCommerceDB;Integrated Security=True")
        con2.Open()
        cmd2 = New SqlCommand("SELECT NomeProdotto FROM aProdotti WHERE id=('" + Request.QueryString("ID").ToString + "')", con2)
        Dim dr As SqlDataReader
        dr = cmd2.ExecuteReader()
        dr.Read()
        Label1.Text = dr(0).ToString
            '------------------------------
        con2.Close()


        '---------------------------------------------------------------------


        ' FUNZIONE DELLA LABEL CHE INDICA LA QUANTITA' DEL PRODOTTO CHE E' STATO AGGIUNTO AL CARRELLO

        Dim con3 As SqlConnection
        Dim cmd3 As SqlCommand
        con3 = New SqlConnection("Data Source=NBK012\ARPASQL;Initial Catalog=aCommerceDB;Integrated Security=True")
        con3.Open()
        cmd3 = New SqlCommand("SELECT Quantità FROM aProdotti WHERE id=('" + Request.QueryString("ID").ToString + "')", con3)
        Dim dr3 As SqlDataReader
        dr3 = cmd3.ExecuteReader()
        dr3.Read()
        Label2.Text = dr3(0).ToString
        '------------------------------
        con3.Close()


        '--------------------------------------------------------------------------------------------------------------------------------------------





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
        Label4.Text = drs(0).ToString
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

  
    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click

        Response.Redirect("VediCarrello.aspx")

    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        Response.Redirect("Catalogo.aspx")
    End Sub

    Protected Sub ImageButton8_Click(sender As Object, e As System.Web.UI.ImageClickEventArgs) Handles ImageButton8.Click
        Response.Redirect("VediCarrello.aspx")
    End Sub

    Protected Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click


        ' Tasto Modifica Quantità

        Try
            SqlDataSource1.SelectCommand = "UPDATE Carrello SET Quantità=" + TextBox1.Text + "WHERE ID=" + Request.QueryString("ID").ToString + ""
            'Response.Write("Modificato con successo")
            Label3.Text = "Modificato con successo"
        Catch ex As Exception
            Response.Write("Error ///")
        End Try




        'Label3.Text = "Modificato con successo"

    End Sub
End Class