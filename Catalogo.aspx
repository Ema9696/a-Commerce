<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Catalogo.aspx.vb" Inherits="a_Commerce.Catalogo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>a Commerce Catalogo</title>
</head>


<body>
    <form id="form1" runat="server">
    <div>





    <!--- INIZIO MENU' CSS-DROPDOWN  -->
    <header>
    
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
&nbsp;Impostazioni / Altro</a>&nbsp;&nbsp;
            <ul>
                <li><a href="SettingsVersion1.aspx">Impostazioni</a></li>
                <li><a href="FAQ.aspx">F.A.Q.</a></li>
                <li><a href="RegistrazioneVersion1.aspx">Registrazione</a></li>
                <li><a href="#">-</a></li>
            </ul>
            </li>
        </ul>
        
    </nav>


 </header>








    <body bgcolor="#e6e6e6">





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
&nbsp;Totale spesa :
        <asp:Label ID="Label1" runat="server"></asp:Label>
&nbsp;<span 
            style="color: rgb(84, 84, 84); font-family: arial, sans-serif; font-size: small; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;">€</span><br />
        ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------<br />
&nbsp;<asp:SiteMapPath ID="SiteMapPath1" runat="server">
        </asp:SiteMapPath>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LoginName ID="LoginName2" runat="server" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LoginStatus ID="LoginStatus1" runat="server" />
        <br />
        ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        <br />
        <br />

        ---->


        <br />
        <br />



        <!---- DIV CONTENENTE TUTTO TRANNE HEAD E FOOTER--->
        <div>


        Totale oggetti in vendita :&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Enabled="False" Height="16px" 
            ReadOnly="True" Width="38px"></asp:TextBox>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <br />
       Cerca :
        &nbsp;<asp:TextBox ID="TextBox1" runat="server" BorderColor="Black" 
            Font-Size="Medium" ForeColor="Black" Width="100%" Height="50px" placeholder="Inserisci qui l' oggetto che vuoi cercare"></asp:TextBox>

            <!----<input type="search" autocomplete="on" placeholder="article, section, ..." name="keyword" required                                maxlength="50">         ----->

&nbsp;&nbsp;
        <asp:Button ID="Button5" runat="server" BackColor="Black" Font-Bold="True" 
            Font-Italic="False" Font-Overline="False" ForeColor="White" Height="57px" 
            style="margin-bottom: 4px" Text="Cerca" Width="100%" />
        <br />
            <br />
        <br />
        [OPZIONALE - ORDINA]<br />
        Una volta effettuata la ricerca, ordina&nbsp; i risultati :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        (&nbsp; da implem.&nbsp; )<br />
        <asp:Button ID="Button1" runat="server" Text="Ordina dal più economico" 
            Width="166px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button4" runat="server" Text="Ordina dal più caro" 
            Width="166px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Ordine alfabetico" 
            Width="166px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" Text="Ordina x data" Width="166px" />
        <br />
        [OPZIONALE - FILTRA]<br />
        <br />



        <%--     
        
        
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns = "false" 
                     Font-Names = "Arial" Caption = "Using ImageControl" Height="577px" 
                     Width="691px" >
                <Columns>
                    <asp:BoundField DataField = "ID" HeaderText = "ID" />
                    <asp:BoundField DataField = "Name" HeaderText = "Image Name" />
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Image ID="Image1" Height = "100" Width = "100" runat="server" ImageUrl = '<%# Eval("ID", "ImageVB.aspx?ImageID={0}")%>' />
                        </ItemTemplate> 
                    </asp:TemplateField> 
                </Columns> 
             </asp:GridView>
        
                <!---    h 38 w 747               -->
        -----------%>


        <div>

        <asp:GridView ID="GridView1"  runat="server" AutoGenerateColumns="False" 
            Font-Names = "Arial" Caption = "Catalogo" 
            DataKeyNames="ID" DataSourceID="SqlDataSource1" AllowPaging="True"
            BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
            CellPadding="4" CellSpacing="2" ForeColor="Black" Height="100%" 
            Width="100%" AllowSorting="True"
            PageSize="50">
            <Columns>
                
                    <%--
                    <asp:BoundField DataField = "ID" HeaderText = "ID" InsertVisible="False" 
                    ReadOnly="True" SortExpression="ID" />
                    -----%>
                    
                <asp:BoundField DataField="NomeProdotto" HeaderText="NomeProdotto" 
                    SortExpression="NomeProdotto" />
                <asp:BoundField DataField="DescrizioneProdotto" 
                    HeaderText="DescrizioneProdotto" SortExpression="DescrizioneProdotto" />
                <asp:BoundField DataField="PrezzoProdotto" HeaderText="PrezzoProdotto" 
                    SortExpression="PrezzoProdotto"/>

                    

                    <asp:TemplateField HeaderText="Foto">
                        <ItemTemplate>
                            <asp:Image ID="Image1" Height = "110" Width = "110" runat="server" ImageUrl = '<%# Eval("ID", "ImageVB.aspx?ImageID={0}")%>' />
                        </ItemTemplate> 
                    </asp:TemplateField> 



                <asp:HyperLinkField DataNavigateUrlFields="ID" 
                    DataNavigateUrlFormatString="DettaglioAquisto.aspx?ID={0}" DataTextField="ID" 
                    HeaderText="Vedi dettagli" Text="ID" />



                    <asp:BoundField DataField="Quantità" HeaderText="Quantità" />



            </Columns>
            <EmptyDataRowStyle BackColor="White" BorderColor="Black" ForeColor="#FF3300" />
            <EmptyDataTemplate>
                Nessun oggetto trovato !
            </EmptyDataTemplate>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="Gray" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>






        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:!aCommerce-ConnectionString! %>" 
            


            
            
            
            SelectCommand="SELECT [NomeProdotto], [DescrizioneProdotto], [PrezzoProdotto], [ID], [Data], [Quantità] FROM [aProdotti]">
        </asp:SqlDataSource>

        </div>










        <br />
            Visualizza n. item per pagina : 10 / 20 / 50 / 100 / 200<br />
            <br />
    
    </div>





    </div>

        <aside>
        Test
        </aside>






      <!--- Footer Test -->
    <footer> 
    <link href="SimpleFooter.css" rel="stylesheet" type="text/css" />
    <p>Copyright 2017 Emanuel Pirovano. All rights reserved.</p>
    <li><a href="GuidaAlSito.aspx">Guida Al Sito</a></li>
    <li><a href="Credits1.aspx">Crediti</a></li>
    <li><a href="InviaSuggerimento.aspx">Invia Suggerimento</a></li>
    </footer>






    </form>
</body>
</html>
