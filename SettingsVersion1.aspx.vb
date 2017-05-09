Public Class SettingsVersion1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load





        'Dim ipaddress As String

        'ipaddress = Request.ServerVariables("HTTP_X_FORWARDED_FOR")

        'If ipaddress = "" OrElse ipaddress Is Nothing Then
        '    ipaddress = Request.ServerVariables("REMOTE_ADDR")
        'End If

        'Response.Write("IP Address : " & ipaddress)

        'Label1.Text = ipaddress

        'ipaddress = Label1.Text



        Dim VisitorsIPAddr As String = String.Empty
        If HttpContext.Current.Request.ServerVariables("HTTP_X_FORWARDED_FOR") IsNot Nothing Then
            VisitorsIPAddr = HttpContext.Current.Request.ServerVariables("HTTP_X_FORWARDED_FOR").ToString()
        ElseIf HttpContext.Current.Request.UserHostAddress.Length <> 0 Then
            VisitorsIPAddr = HttpContext.Current.Request.UserHostAddress
        End If
        Label1.Text = Convert.ToString("Your IP is: ") & VisitorsIPAddr



        'Request.ServerVariables("LOCAL ADDR")

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
End Class