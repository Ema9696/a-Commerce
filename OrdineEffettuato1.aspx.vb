Imports System.Collections.Generic
Imports System.ComponentModel
Imports System.Data
Imports System.Drawing
Imports System.Linq
Imports System.Text
Imports System.Net.Mail
Imports System.Net

Imports System.Data.SqlClient
Imports System.Data.Sql
Imports System.Web
Imports System.Web.UI
Imports System.Xml


Public Class OrdineEffettuato1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load


        ' Page Load




    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click


        ' CLICK BUTTON "RICEVI MAIL......."



        '-------------------------------------------------


        'Dim EmailTo As String = "emanuel.pirovano@arpa-srl.it"
        'Dim EmailFrom As String = "emanuel.pirovano@arpa-srl.it"
        'Dim EmailSubject As String = "Email di prova"
        'Dim EmailBody As String = "Contenuto della mail"
        'System.Net.Mail.
        ''System.Net.Mail.SmtpMail.Send(EmailFrom, EmailTo, EmailSubject, EmailBody)
        'Response.Write("Mail inviata con successo !!!")


        '------------------------------------------------


        'Dim message As New MailMessage()
        'message.[To].Add("richiesteservizioitarpa@gmail.com")
        'message.Subject = "Prova di invio di una mail"
        'message.Body = "Test di invio di una mail attraverso ASP.NET."
        'Dim client As New SmtpClient()
        'client.Send(message)


        '-----------------------------------------------


        'Try
        '    Dim mailMessage As New MailMessage()
        '    mailMessage.[To].Add("richiesteservizioitarpa@gmail.com")
        '    mailMessage.From = New MailAddress("richiesteservizioitarpa@gmail.com")
        '    mailMessage.Subject = "ASP.NET e-mail test"
        '    mailMessage.Body = "Hello world," & vbLf & vbLf & "This is an ASP.NET test e-mail!"
        '    Dim smtpClient As New SmtpClient("smtp.gmail.com")
        '    smtpClient.Send(mailMessage)
        '    Response.Write("E-mail sent!")
        'Catch ex As Exception
        '    Response.Write("Could not send the e-mail - error: " + ex.Message)
        'End Try


        '---------------------------------------------------------


        'Dim smtpClient As New SmtpClient("smtp.gmail.com", 587)

        'smtpClient.Credentials = New System.Net.NetworkCredential("pirovano.emanuel@gmail.com", "Emanuel2323")
        'smtpClient.UseDefaultCredentials = False
        'smtpClient.DeliveryMethod = SmtpDeliveryMethod.Network
        'smtpClient.EnableSsl = True
        'Dim mail As New MailMessage()

        ''Setting From , To and CC
        'mail.From = New MailAddress("pirovano.emanuel@gmail.com", "MyWeb Site")
        'mail.[To].Add(New MailAddress("richiesteservizioitarpa@gmail.com"))
        ''mail.CC.Add(New MailAddress("MyEmailID@gmail.com"))

        'smtpClient.Send(mail)


        '----------------------------------------------------------

        ' FUNZIONANTE - OK
        '
        ' Mittente
        Dim fromAddress As New MailAddress("richiesteservizioitarpa@gmail.com")
        'Destinatario -> Utente
        Dim toAddress As New MailAddress(TextBox1.Text)

        Dim mail As New MailMessage(fromAddress.Address, toAddress.Address)
        'mail.Priority = MailPriority.High
        'mail.IsBodyHtml = False
        mail.Subject = "aCommerce - Ordine n xyz"
        mail.Body = "Gentile..." + TextBox2.Text + ", le confermiamo che il suo ordine è stato confermato e pagato con successo.Riceverà un' altra mail quando sarà evaso, cioè quando partirà la spedizione. Cordiali Saluti. a-Commerce Team"


        Dim client As New SmtpClient()
        client.Host = "smtp.gmail.com"
        client.Port = 587
        client.EnableSsl = True
        client.Timeout = 10000
        client.UseDefaultCredentials = False
        ' Dati della mail mittente
        client.Credentials = New NetworkCredential("richiesteservizioitarpa", "provaprova58")


        ' Invia
        Try
            client.Send(mail)
            Response.Write("Ti è stata inviata una mail a :     " + toAddress.ToString)
        Catch ex As Exception
            MsgBox("Error")
            'ex.Message.ToString()
        End Try

        
        ' Fine metodo invia mail (Funzionante)




    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Response.Redirect("HomePage.aspx")
    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        Response.Redirect("Catalogo.aspx")
    End Sub

    Protected Sub ImageButton3_Click(sender As Object, e As System.Web.UI.ImageClickEventArgs) Handles ImageButton3.Click
        Response.Redirect("UserProfile.aspx")
    End Sub

    Protected Sub ImageButton4_Click(sender As Object, e As System.Web.UI.ImageClickEventArgs) Handles ImageButton4.Click
        Response.Redirect("SettingsVersion1.aspx")
    End Sub

    Protected Sub ImageButton2_Click(sender As Object, e As System.Web.UI.ImageClickEventArgs) Handles ImageButton2.Click
        Response.Redirect("HomePage.aspx")
    End Sub

    Protected Sub ImageButton5_Click(sender As Object, e As System.Web.UI.ImageClickEventArgs) Handles ImageButton5.Click
        Response.Redirect("Catalogo.aspx")
    End Sub

    Protected Sub Button5_Click(sender As Object, e As EventArgs) Handles Button5.Click


        ' GENERA ARCHIVIO ORDINE



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



        ' Query per spostare il carrello al archivio ordini 



        'SqlDataSource1.SelectCommand = "insert into ordiniarchivio(id,nomeprodotto,prezzoprodotto,quantità) select id,nomeprodotto,prezzoprodotto,quantità from carrello"










    End Sub
End Class