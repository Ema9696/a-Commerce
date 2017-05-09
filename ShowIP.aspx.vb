Public Class ShowIP
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load






        Dim ipaddress As String
        ipaddress = Request.ServerVariables("HTTP_X_FORWARDED_FOR")
        If ipaddress = "" Or ipaddress Is Nothing Then
            ipaddress = Request.ServerVariables("REMOTE_ADDR")
        End If


        Label1.Text = ipaddress















    End Sub

End Class