Public Class LoginVersion1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Private Sub Login1_LoggedIn(sender As Object, e As System.EventArgs) Handles Login1.LoggedIn
        Response.Redirect("Catalogo.aspx")
    End Sub

    Protected Sub ImageButton2_Click(sender As Object, e As System.Web.UI.ImageClickEventArgs) Handles ImageButton2.Click
        Response.Redirect("Homepage.aspx")
    End Sub

    Protected Sub ImageButton4_Click(sender As Object, e As System.Web.UI.ImageClickEventArgs) Handles ImageButton4.Click
        Response.Redirect("SettingsVersion1.aspx")
    End Sub

    Protected Sub ImageButton3_Click(sender As Object, e As System.Web.UI.ImageClickEventArgs) Handles ImageButton3.Click
        Response.Redirect("UserProfile.aspx")
    End Sub

    Protected Sub ImageButton5_Click(sender As Object, e As System.Web.UI.ImageClickEventArgs) Handles ImageButton5.Click

    End Sub

    Protected Sub LoginButton_Click(sender As Object, e As EventArgs)

    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Response.Redirect("RecuperaPW.aspx")
    End Sub
End Class