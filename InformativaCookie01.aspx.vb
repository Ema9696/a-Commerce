Public Class InformativaCookie01
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load


        ' Page Load "InformatiaCookie01"








    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click



        Response.Redirect("HomePage.aspx")



    End Sub
End Class