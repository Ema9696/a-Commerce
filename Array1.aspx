<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Array1.aspx.vb" Inherits="a_Commerce.Array1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Array 1 - Test Carrello</title>
    <style type="text/css">
        
        body
        {
            font-family: Arial;
            font-size: 10pt;
        }
        table
        {
            border: 1px solid #ccc;
            border-collapse: collapse;
        }
        table th
        {
            background-color: #F7F7F7;
            color: #333;
            font-weight: bold;
        }
        table th, table td
        {
            padding: 5px;
            border: 1px solid #ccc;
        }
        table, table table td
        {
            border: 0px solid #ccc;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    Carrello :
    <br />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false">
            <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" ItemStyle-Width="50" />
            <asp:BoundField DataField="NomeProdotto" HeaderText="Nome" ItemStyle-Width="150" />
            <asp:BoundField DataField="PrezzoProdotto" HeaderText="PrezzoProdotto" ItemStyle-Width="150" />
            <asp:BoundField DataField="Quantità" HeaderText="Quantità" ItemStyle-Width="150" />
        </Columns>

        


    </asp:GridView>




    <br />
    <br />
    Totale Spesa : <br />
    <br />
    <asp:Button ID="Button2" runat="server" Text="Conferma e Prosegui" 
        Width="554px" Height="55px" />
    <br />
    <br />
    <asp:Button ID="Button3" runat="server" Height="34px" Text="Svuota Cestino" 
        Width="553px" />
    <br />
    Aggiorna - Svuota Carrello&nbsp; -<br />
    <br />
    <br />
    Eliminazione singolo item su grid view<br />
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Text="Back to Catalogo" Width="557px" />
    <br />
    </form>
</body>
</html>





















