Public Class UserProfile
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load


        ' Page Load











        '-------------------------
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Response.Redirect("CambiaPw.aspx")
    End Sub

    Protected Sub ImageButton2_Click(sender As Object, e As System.Web.UI.ImageClickEventArgs) Handles ImageButton2.Click
        Response.Redirect("HomePage.aspx")
    End Sub

    Protected Sub ImageButton3_Click(sender As Object, e As System.Web.UI.ImageClickEventArgs) Handles ImageButton3.Click
        Response.Redirect("UserProfile.aspx")
    End Sub

    Protected Sub ImageButton5_Click(sender As Object, e As System.Web.UI.ImageClickEventArgs) Handles ImageButton5.Click
        Response.Redirect("Catalogo.aspx")
    End Sub

    Protected Sub ImageButton4_Click(sender As Object, e As System.Web.UI.ImageClickEventArgs) Handles ImageButton4.Click
        Response.Redirect("SettingsVersion1.aspx")
    End Sub

    Protected Sub ImageButton6_Click(sender As Object, e As System.Web.UI.ImageClickEventArgs) Handles ImageButton6.Click
        Response.Redirect("Vendita.aspx")
    End Sub

    Protected Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        Response.Redirect("StoricoOrdini.aspx")
    End Sub
End Class