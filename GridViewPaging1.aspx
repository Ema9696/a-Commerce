<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="GridViewPaging1.aspx.vb" Inherits="a_Commerce.GridViewPaging1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <br />
        Pagina di [TEST] per il mantenimento di stato del paging di una GridView<br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />




        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" AllowPaging="true"
    OnPageIndexChanging="OnPageIndexChanging" PageSize="10">
    <Columns>
        <asp:BoundField ItemStyle-Width="150px" DataField="ID" HeaderText="Customer ID" />
        <asp:BoundField ItemStyle-Width="150px" DataField="NomeProdotto" HeaderText="NomeProdotto" />
        <asp:BoundField ItemStyle-Width="150px" DataField="PrezzoProdotto" HeaderText="PrezzoProdotto" />
    </Columns>
</asp:GridView>






    
    </div>
    </form>
</body>
</html>
