Public Class RegistrazioneVersion1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub CreateUserWizard1_CreatedUser(sender As Object, e As EventArgs) Handles CreateUserWizard1.CreatedUser

    End Sub

    Protected Sub ImageButton2_Click(sender As Object, e As System.Web.UI.ImageClickEventArgs) Handles ImageButton2.Click
        Response.Redirect("HomePage.aspx")
    End Sub

    Protected Sub ImageButton4_Click(sender As Object, e As System.Web.UI.ImageClickEventArgs) Handles ImageButton4.Click
        Response.Redirect("SettingsVersion1.aspx")
    End Sub

    Protected Sub ImageButton3_Click(sender As Object, e As System.Web.UI.ImageClickEventArgs) Handles ImageButton3.Click
        Response.Redirect("UserProfile.aspx")
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Response.Redirect("LoginVersion1.aspx")
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Response.Redirect("Catalogo.aspx")
    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        Response.Redirect("Vendita.aspx")
    End Sub
End Class