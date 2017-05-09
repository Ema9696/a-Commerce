<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ImageVB.aspx.vb" Inherits="a_Commerce.ImageVB" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <asp:Button ID="Button1" runat="server" Text="Button" />
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:!aCommerce-ConnectionString! %>" 
            
            SelectCommand="SELECT [id], [Name], [ContentType], [Data] FROM [aProdotti]">
        </asp:SqlDataSource>
        <br />
        <br />
<asp:GridView ID="GridView2" runat="server" AutoGenerateColumns = "false"
Font-Names = "Arial" Caption = "Using ImageControl" >
<Columns>
    <asp:BoundField DataField = "ID" HeaderText = "ID" />
    <asp:BoundField DataField = "Name" HeaderText = "Image Name" />
    <asp:TemplateField>
        <ItemTemplate>
          <asp:Image ID="Image1" Height = "110" Width = "110" runat="server"
             ImageUrl = '' />
        </ItemTemplate>
    </asp:TemplateField>
</Columns>
</asp:GridView>
    
    </div>
    </form>
</body>
</html>
