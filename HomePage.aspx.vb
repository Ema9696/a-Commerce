Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls













Public Class HomePage
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        ' Page Load












    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click


        Response.Redirect("Catalogo.aspx")


    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click


        Response.Redirect("Vendita.aspx")


    End Sub

    Protected Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click


        Response.Redirect("Credits1.aspx")


    End Sub

    Protected Sub Button5_Click(sender As Object, e As EventArgs) Handles Button5.Click


        Response.Redirect("LoginVersion1.aspx")



    End Sub

    Protected Sub Button6_Click(sender As Object, e As EventArgs) Handles Button6.Click


        Response.Redirect("RegistrazioneVersion1.aspx")


    End Sub

    Protected Sub ImageButton5_Click(sender As Object, e As System.Web.UI.ImageClickEventArgs) Handles ImageButton5.Click


        Response.Redirect("Catalogo.aspx")

    End Sub

    Protected Sub ImageButton2_Click(sender As Object, e As System.Web.UI.ImageClickEventArgs) Handles ImageButton2.Click


        Response.Redirect("HomePage.aspx")

    End Sub

    Protected Sub ImageButton4_Click(sender As Object, e As System.Web.UI.ImageClickEventArgs) Handles ImageButton4.Click

        Response.Redirect("SettingsVersion1.aspx")

    End Sub

    Protected Sub ImageButton6_Click(sender As Object, e As System.Web.UI.ImageClickEventArgs) Handles ImageButton6.Click



        Response.Redirect("Vendita.aspx")


    End Sub

    Protected Sub ImageButton3_Click(sender As Object, e As System.Web.UI.ImageClickEventArgs) Handles ImageButton3.Click



        Response.Redirect("UserProfile.aspx")


    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click


        Response.Redirect("UserProfile.aspx")


    End Sub


    Protected Sub Button7_Click(sender As Object, e As EventArgs) Handles Button7.Click


        ' Button inizia sessione


        '-----------------------
        ' Page load


        'Me.Label1.Text = Me.sessionString
        'Me.Label2.Text = DirectCast(Me.Session("sessionString"), String)


        ' Button _ Click

        '----
        ' Guida Bocchicchio
        'Session("myses")=&quotciao!"
        ' Read
        'myses = Session("myses")
        '----


        ' Guida web master
        ' Button MEMORIZZA
        'Me.sessionString = Me.TextBox1.Text
        'Me.Label1.Text = Me.sessionString
        '

        'Me.sessionString = Me.TextBox1.Text
        'Me.Session("sessionString") = Me.TextBox1.Text
        'Me.Label1.Text = Me.sessionString
        'Me.Label2.Text = DirectCast(Me.Session("sessionString"), String)


        '---------------------------------


    End Sub

    'Protected Sub Button9_Click(sender As Object, e As EventArgs) Handles Button9.Click

    ' Response.Redirect("GuidaAlSito.aspx")

    ' End Sub

    'Protected Sub ImageButton17_Click(sender As Object, e As System.Web.UI.ImageClickEventArgs) Handles ImageButton17.Click
    'Response.Redirect("Catalogo.aspx")
    'End Sub

    'Protected Sub ImageButton16_Click(sender As Object, e As System.Web.UI.ImageClickEventArgs) Handles ImageButton16.Click
    'Response.Redirect("Catalogo.aspx")
    'End Sub

    Protected Sub Button8_Click(sender As Object, e As EventArgs) Handles Button8.Click


        ' Button fine sessione





        '-------------------
    End Sub

    Protected Sub Button11_Click(sender As Object, e As EventArgs) Handles Button11.Click


        Response.Redirect("InviaSuggerimento.aspx")


    End Sub

    Protected Sub ImageButton8_Click(sender As Object, e As System.Web.UI.ImageClickEventArgs) Handles ImageButton8.Click



        Response.Redirect("VediCarrello.aspx")


    End Sub

    Protected Sub Button10_Click(sender As Object, e As EventArgs) Handles Button10.Click



        Response.Redirect("GuidaAlSito.aspx")


    End Sub


    Protected Sub ImageButton9_Click(sender As Object, e As System.Web.UI.ImageClickEventArgs) Handles ImageButton9.Click



        Response.Redirect("FAQ.aspx")


    End Sub


End Class