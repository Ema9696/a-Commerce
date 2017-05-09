<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Test1.aspx.vb" Inherits="a_Commerce.Test1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    



    <body background="\BackGround_Test\slider-bga.jpg">





        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:!aCommerce-ConnectionString! %>" 
            SelectCommand="SELECT [ID], [Nome] FROM [Carrello]"></asp:SqlDataSource>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource1" DataKeyNames="ID">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" 
                    ReadOnly="True" />
                <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
            </Columns>
        </asp:GridView>
        <br />
        <br />
        Inserisci item carrello test<br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Button" Width="163px" />
        <br />
        <br />
        -------------------------------------------------------------------------<br />
        <br />
        <br />
        <br />
        <br />
        <br />
        --------------------------------------------------------------------------<br />
        <br />
        <br />
        <br />
        <br />
        <br />
        ---------------------------------------------------------------------------<br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
