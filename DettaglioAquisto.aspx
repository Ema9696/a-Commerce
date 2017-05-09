<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="DettaglioAquisto.aspx.vb" Inherits="a_Commerce.DettaglioAquisto" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>a Commerce Dettagli Acquisto</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    




    <!--- <body background="\BackGround_Test\slider-bga.jpg">   --->

    <body bgcolor="#e6e6e6">






        <!--- INIZIO MENU' CSS-DROPDOWN  -->
    <div>

     <link href="MarkupMenu.css" rel="stylesheet" type="text/css" />   


    <nav>
        <ul class="cf">
        <li><a href="HomePage.aspx">
            <asp:Image ID="Image18" runat="server" Height="28px" 
                ImageUrl="~/Image/1489415377_home.png" Width="28px" />
&nbsp;HomePage</a></li>
        <li><a class="dropdown" href="#">
            <asp:Image ID="Image21" runat="server" Height="28px" 
                ImageUrl="~/Image/1489431596_money.png" Width="28px" />
&nbsp;Compra / Vendi</a>
            <ul>
                <li><a href="Catalogo.aspx">Compra dal catalogo</a></li>
                <li><a href="Vendita.aspx">Vendi oggetto</a></li>
                <li><a href="#">-</a></li>
            </ul>
            </li>
            <li><a class="dropdown" href="#">
                <asp:Image ID="Image19" runat="server" Height="28px" 
                    ImageUrl="~/Image/1489415630_user.png" Width="28px" />
&nbsp;Utente</a>
            <ul>
                <li><a href="UserProfile.aspx">Mio Profilo</a></li>
                <li><a href="LoginVersion1.aspx">Log - In</a></li>
                <li><a href="RegistrazioneVersion1.aspx">Registrazione</a></li>
                <li><a href="#">-</a></li>
            </ul>
            </li>
        <li><a class="dropdown" href="#">
            <asp:Image ID="Image20" runat="server" Height="28px" 
                ImageUrl="~/Image/1489416013_settings.png" Width="28px" />
&nbsp;Impostazioni / Altro</a>
            <ul>
                <li><a href="SettingsVersion1.aspx">Impostazioni</a></li>
                <li><a href="FAQ.aspx">F.A.Q.</a></li>
                <li><a href="RegistrazioneVersion1.aspx">Registrazione</a></li>
                <li><a href="#">-</a></li>
            </ul>
            </li>
        </ul>
        
    </nav>


    </div>


    <!----

    &nbsp;&nbsp;&nbsp; Home&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Catalogo&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        Utente&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Impostazioni&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        Vendi&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        Carrello<br />
        ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------<br />
        <asp:ImageButton ID="ImageButton2" runat="server" Height="51px" 
            ImageUrl="~/Image/1489415377_home.png" Width="62px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:ImageButton ID="ImageButton5" runat="server" Height="51px" 
            ImageUrl="~/Image/1489411155_search.png" Width="62px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:ImageButton ID="ImageButton3" runat="server" Height="51px" 
            ImageUrl="~/Image/1489415630_user.png" Width="62px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:ImageButton ID="ImageButton4" runat="server" Height="51px" 
            ImageUrl="~/Image/1489416013_settings.png" Width="62px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; F.A.Q&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:ImageButton ID="ImageButton6" runat="server" Height="51px" 
            ImageUrl="~/Image/1489431596_money.png" Width="62px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:ImageButton ID="ImageButton8" runat="server" Height="53px" 
            ImageUrl="~/Image/1490212478_shopping-cart.png" Width="69px" />
        &nbsp;&nbsp;&nbsp; Totale spesa :
        <asp:Label ID="Label1" runat="server"></asp:Label>
&nbsp;<span 
            style="color: rgb(84, 84, 84); font-family: arial, sans-serif; font-size: small; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;">€</span><br />
        ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------<br />
        <asp:SiteMapPath ID="SiteMapPath1" runat="server">
        </asp:SiteMapPath>
        <br />
        ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------<br />

        ---->






        <br />
        Stai guardando il seguente oggetto :<br />
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
            DataKeyNames="ID" DataSourceID="SqlDataSource1" Height="638px" 
            Width="668px">
            <Fields>
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
                <asp:HyperLinkField DataNavigateUrlFields="ID" 
                    DataNavigateUrlFormatString="Array1.aspx?ID={0}" DataTextField="ID" 
                    HeaderText="Compra" Text="Compra" />
                                        <asp:TemplateField HeaderText="Foto">
                        <ItemTemplate>
                            <asp:Image ID="Image1" Height = "100" Width = "100" runat="server" ImageUrl = '<%# Eval("ID", "ImageVB.aspx?ImageID={0}")%>' />
                        </ItemTemplate> 
                    </asp:TemplateField> 
                <asp:BoundField DataField="Quantità" HeaderText="Quantità" 
                    SortExpression="Quantità" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:!aCommerce-ConnectionString! %>" 
            
            
            SelectCommand="SELECT [ID], [NomeProdotto], [DescrizioneProdotto], [PrezzoProdotto], [DataInserimento], [DataScadenza], [Data], [Quantità] FROM [aProdotti]">
        </asp:SqlDataSource>
        <br />
        <br /> 
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        Quantità : 
        <asp:TextBox ID="TextBox2" runat="server" Width="185px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Conferma Quantità" 
            Width="188px" />
        <br />
        <br />
        <br />
        <br />
        Buy (Aggiungi al carrello)<br />
        <br />
        <asp:ImageButton ID="ImageButton7" runat="server" Height="109px" 
            ImageUrl="~/Image/buy_now_button.png" style="margin-bottom: 0px" 
            Width="319px" />
        <br />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:!aCommerce-ConnectionString! %>" 
            SelectCommand="SELECT [ID], [Nome] FROM [Carrello]"></asp:SqlDataSource>
        <br />
    
    </div>
    </form>








          <!--- Footer Test -->
    <footer> 
    <link href="SimpleFooter.css" rel="stylesheet" type="text/css" />
    <p>Copyright 2017 Emanuel Pirovano. All rights reserved.</p>
    <li><a href="GuidaAlSito.aspx">Guida Al Sito</a></li>
    <li><a href="Credits1.aspx">Crediti</a></li>
    <li><a href="InviaSuggerimento.aspx">Invia Suggerimento</a></li>
    </footer>













</body>
</html>
