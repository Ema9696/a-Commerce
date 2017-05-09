<%@Page Language="VB"%>
<script language="VB" runat="server">
    Private Sub Page_Load(sender As Object, e As EventArgs)
        
        
        Dim act As String = Request.QueryString("act")
        Dim id As Integer = Request.QueryString("id")
        Dim qta As Integer = Request.QueryString("qta")
        If IsNumeric(id) And id > 0 Then
            If act = "add" Then
                Session("p" & id) = qta
            End If
            If act = "del" Then
                Session.Contents.Remove("p" & id)
            End If
            Response.Redirect("CarrelloWebMaster.aspx")
        End If
        If act = "empty" Then
            Session.Contents.RemoveAll()
            Response.Redirect("CarrelloWebMaster.aspx")
        End If
        If Session.Contents.Count = 0 Then
            riepilogo.Text = "Il carrello è vuoto!"
        Else
            Dim item
            For Each item In Session.Contents
                riepilogo.Text += "<p>Prodotto # " & Replace(item, "p", "") & " (" & Session(item) & ") <a href=""CarrelloWebMaster.aspx?act=del&id=" & Replace(item, "p", "") & """>Cancella</a></p>"
            Next
            riepilogo.Text += "<p><a href='CarrelloWebMaster.aspx?act=empty'>Svuota il carrello</a>"
        End If
    End Sub
</script>
<html>
    <head>
        <title>Carrello della spesa in ASP.NET</title>
        <script type="text/javascript">
            function Carrello(ID, Qta) {
                if (isNaN(Qta) || Qta < 1) {
                    alert("Specificare la quantità!");
                }
                else {
                    document.location.href = "CarrelloWebMaster.aspx?act=add&id=" + ID + "&qta=" + Qta;
                }
            }
        </script>
    </head>
<body>

<form id="modulo" runat="server">
<p><b>Elenco prodotti</b></p>
Prodotto # 1<br><br>
<asp:textbox id="p1" runat="server" Text="1" Width="50" />
<a href="javascript:Carrello(1, document.getElementById('p1').value)">Aggiungi al carrello</a><br><br>
Prodotto # 2<br><br>
<asp:textbox id="p2" runat="server" Text="1" Width="50" />
<a href="javascript:Carrello(2, document.getElementById('p2').value)">Aggiungi al carrello</a><br><br>
Prodotto # 3<br><br>
<asp:textbox id="p3" runat="server" Text="1" Width="50" />
<a href="javascript:Carrello(3, document.getElementById('p3').value)">Aggiungi al carrello</a><br><br>
<p><b>Riepilogo ordini</b></p>
<asp:literal id="riepilogo" runat="server" />
</form>








</body>
</html>