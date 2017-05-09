<%@ Page Language="VB" AutoEventWireup="false" CodeFile="VB.aspx.vb" Inherits="VB" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>GridView Paging Example</title>

</head>
<body>
    <form id="form1" runat="server">
    <div>


        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" AllowPaging="true"
            OnPageIndexChanging="OnPageIndexChanging" PageSize="10">
            <Columns>
                <asp:BoundField ItemStyle-Width="250px" DataField="ID" HeaderText="Customer ID" />
                <asp:BoundField ItemStyle-Width="150px" DataField="NomeProdotto" HeaderText="Contact Name" />
                <asp:BoundField ItemStyle-Width="150px" DataField="DescrizioneProdotto" HeaderText="City" />
                <asp:BoundField ItemStyle-Width="150px" DataField="PrezzoProdotto" HeaderText="Country" />
            </Columns>
        </asp:GridView>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Ordina !!!" Width="616px" />
        <br />
    </div>
    </form>
</body>
</html>
