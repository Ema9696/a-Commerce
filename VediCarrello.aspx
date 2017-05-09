<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="VediCarrello.aspx.vb" Inherits="a_Commerce.VediCarrello" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>a Commerce Riepilogo Carrello</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="font-size: inherit">
    






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
        Utente&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Impostazioni&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        Vendi&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
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
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:ImageButton ID="ImageButton6" runat="server" Height="51px" 
            ImageUrl="~/Image/1489431596_money.png" Width="62px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:ImageButton ID="ImageButton7" runat="server" Height="53px" 
            ImageUrl="~/Image/1490212478_shopping-cart.png" Width="69px" />
        &nbsp;<br />
        ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------<br />
&nbsp;<asp:SiteMapPath ID="SiteMapPath1" runat="server">
        </asp:SiteMapPath>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LoginName ID="LoginName2" runat="server" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LoginStatus ID="LoginStatus1" runat="server" />
        <br />
        ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------<br />
        
        ----->
        
        
        
        
        <br />
        Il tuo carrello :<br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConflictDetection="CompareAllValues" 
            ConnectionString="<%$ ConnectionStrings:!aCommerce-ConnectionString! %>" 
            DeleteCommand="DELETE FROM [Carrello] WHERE [ID] = @original_ID AND (([Nome] = @original_Nome) OR ([Nome] IS NULL AND @original_Nome IS NULL)) AND (([Quantità] = @original_Quantità) OR ([Quantità] IS NULL AND @original_Quantità IS NULL)) AND (([PrezzoFloat] = @original_PrezzoFloat) OR ([PrezzoFloat] IS NULL AND @original_PrezzoFloat IS NULL))" 
            InsertCommand="INSERT INTO [Carrello] ([ID], [Nome], [Quantità], [PrezzoFloat]) VALUES (@ID, @Nome, @Quantità, @PrezzoFloat)" 
            OldValuesParameterFormatString="original_{0}" 
            SelectCommand="SELECT [ID], [Nome], [Quantità], [PrezzoFloat] FROM [Carrello]" 
            
            UpdateCommand="UPDATE [Carrello] SET [Nome] = @Nome, [Quantità] = @Quantità, [PrezzoFloat] = @PrezzoFloat WHERE [ID] = @original_ID AND (([Nome] = @original_Nome) OR ([Nome] IS NULL AND @original_Nome IS NULL)) AND (([Quantità] = @original_Quantità) OR ([Quantità] IS NULL AND @original_Quantità IS NULL)) AND (([PrezzoFloat] = @original_PrezzoFloat) OR ([PrezzoFloat] IS NULL AND @original_PrezzoFloat IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_ID" Type="Int32" />
                <asp:Parameter Name="original_Nome" Type="String" />
                <asp:Parameter Name="original_Quantità" Type="Int32" />
                <asp:Parameter Name="original_PrezzoFloat" Type="Double" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ID" Type="Int32" />
                <asp:Parameter Name="Nome" Type="String" />
                <asp:Parameter Name="Quantità" Type="Int32" />
                <asp:Parameter Name="PrezzoFloat" Type="Double" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Nome" Type="String" />
                <asp:Parameter Name="Quantità" Type="Int32" />
                <asp:Parameter Name="PrezzoFloat" Type="Double" />
                <asp:Parameter Name="original_ID" Type="Int32" />
                <asp:Parameter Name="original_Nome" Type="String" />
                <asp:Parameter Name="original_Quantità" Type="Int32" />
                <asp:Parameter Name="original_PrezzoFloat" Type="Double" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="ID" DataSourceID="SqlDataSource1" Height="162px" 
            Width="328px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" />
                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" 
                    SortExpression="ID" />
                <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
                <asp:BoundField DataField="PrezzoFloat" HeaderText="Prezzo" 
                    SortExpression="PrezzoFloat" />
                <asp:BoundField DataField="Quantità" HeaderText="Quantità" 
                    SortExpression="Quantità" />
            </Columns>
            <EmptyDataTemplate>
                Carrello Vuoto
            </EmptyDataTemplate>
        </asp:GridView>
        <br />
        <br />
        TOTALE :&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Font-Size="Large" ForeColor="Blue"></asp:Label>
&nbsp;<span 
         style="color: rgb(84, 84, 84); font-family: arial, sans-serif; font-size: small; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;">€</span><br />
        <br />
        <asp:Button ID="Button5" runat="server" Text="Aggiorna Carrello" 
            Width="163px" Height="44px" />
        <asp:Button ID="Button4" runat="server" Text="Svuota Carrello" Width="166px" 
            Height="44px" />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>
        <br />
        <asp:Button ID="Button3" runat="server" Height="119px" Text="Effettua Pagamento" 
            Width="100%" BackColor="Black" ForeColor="White" />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Torna al Catalogo" 
            Width="100%" Height="50px" BackColor="Black" ForeColor="White" />
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" Text="Torna al HomePage" 
            Width="100%" Height="50px" BackColor="Black" ForeColor="White" />
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
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource3">
            <Columns>
                <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
                <asp:BoundField DataField="Prezzo" HeaderText="Prezzo" 
                    SortExpression="Prezzo" />
                <asp:BoundField DataField="Quantità" HeaderText="Quantità" 
                    SortExpression="Quantità" />
            </Columns>
        </asp:GridView>
        <br />
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:!aCommerce-ConnectionString! %>" 
            SelectCommand="SELECT [Nome], [Prezzo], [Quantità] FROM [Carrello]">
        </asp:SqlDataSource>
        <br />
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
