<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="GridViewTest002.aspx.vb" Inherits="a_Commerce.GridViewTest002" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>test</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>


        
        <link href="GridViewCSSparallelecodes1.css" rel="stylesheet" type="text/css" />




    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="ID" DataSourceID="SqlDataSource1">
            
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                    ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="NomeProdotto" HeaderText="NomeProdotto" 
                    SortExpression="NomeProdotto" />
                <asp:BoundField DataField="DescrizioneProdotto" 
                    HeaderText="DescrizioneProdotto" SortExpression="DescrizioneProdotto" />
                <asp:BoundField DataField="PrezzoProdotto" HeaderText="PrezzoProdotto" 
                    SortExpression="PrezzoProdotto" />
                <asp:BoundField DataField="DataInserimento" HeaderText="DataInserimento" 
                    SortExpression="DataInserimento" />
                <asp:BoundField DataField="DataScadenza" HeaderText="DataScadenza" 
                    SortExpression="DataScadenza" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="ContentType" HeaderText="ContentType" 
                    SortExpression="ContentType" />
                <asp:BoundField DataField="DescrizioneCompleta" 
                    HeaderText="DescrizioneCompleta" SortExpression="DescrizioneCompleta" />
                <asp:BoundField DataField="Quantità" HeaderText="Quantità" 
                    SortExpression="Quantità" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:!aCommerce-ConnectionString! %>" 
            SelectCommand="SELECT * FROM [aProdotti]"></asp:SqlDataSource>
    


    </div>
    </form>
</body>
</html>
