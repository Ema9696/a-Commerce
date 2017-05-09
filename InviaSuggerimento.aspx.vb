Imports System.Net.Mail
Imports System.Net

Public Class InviaSuggerimento
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click


        ' Da questo pulsante viene inviato il suggerimento alla mail (es : suggerimenti@acommerce.it)



        ' INVIA SUGGERIMENTO 



        ' FUNZIONANTE - OK
        '
        ' Mittente
        Dim fromAddress As New MailAddress("richiesteservizioitarpa@gmail.com")
        'Destinatario -> Utente
        Dim toAddress As New MailAddress("richiesteservizioitarpa@gmail.com")

        Dim mail As New MailMessage(fromAddress.Address, toAddress.Address)
        'mail.Priority = MailPriority.High
        'mail.IsBodyHtml = False
        mail.Subject = "aCommerce - Ordine n xyz"
        'mail.Body = "Gentile..." + TextBox2.Text + ", le confermiamo che il suo ordine è stato confermato e pagato con successo.Riceverà un' altra mail quando sarà evaso, cioè quando partirà la spedizione. Cordiali Saluti. a-Commerce Team"
        mail.Body = "Pagina di invio suggerimenti :  " + TextBox1.Text + " Mail del utente :  " + TextBox2.Text

        ' Mail del utente inserita nel textbox2
        'mail.Body = "Mail del utente :  " + TextBox2.Text


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
End Class