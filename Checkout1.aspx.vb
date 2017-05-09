Imports System.Data
Imports System.Data.SqlClient
Imports System.Data.Sql
Imports System.Web
Imports System.Web.UI
Imports System.Xml
Imports System.IO


Public Class Checkout1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        ' Load










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
        ' Conferma e Paga
        Response.Redirect("OrdineEffettuato1.aspx")
        ' Gestione tabella ORDINI
        ' Dal pagamento fittizio, il carrello si svuota e va a riempire una tabella ordini, per gestire poi lo storico ordini e comunque archiviare tutti i dati
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


        'SqlDataSource1.SelectCommand = "CREATE TABLE CreateOrderX1 (OrderID int, LastName varchar(255), FirstName varchar(255), Address varchar(255), City varchar(255) )"


        'SqlDataSource1.SelectCommand = "INSERT INTO [Carrello] (ID) VALUES('899')"


        'GridView1.DataSource = cmd.ExecuteReader()
        'GridView1.DataBind()
        '
        '
        'Response.Redirect("VediCarrello.aspx")



        '-----------------------------------------------------------------------------------------------------------------------


        '
        SqlDataSource1.SelectCommand = "INSERT INTO TestTabellaOrdini1 (ID,NomeProdotto,PrezzoProdotto, Quantità) SELECT Id,Nome, Prezzo, Quantità FROM Carrello"
        SqlDataSource1.SelectCommand = "INSERT INTO TestTabellaOrdini1(Id_Ordine) SELECT Numero_Ordine FROM NumeroOrdine"

        ' Sottraggo quantità

        'SqlDataSource1.SelectCommand = ""








        '

        ' Aggiorno quantità

        'SqlDataSource1.SelectCommand = "INSERT INTO TestTabellaOrdini1.aspx ?= (ID,NomeProdotto,PrezoProdotto,Quatità,PrezzoFloat,ID_OrDINE)"












    End Sub


End Class