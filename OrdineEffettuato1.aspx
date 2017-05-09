<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="OrdineEffettuato1.aspx.vb" Inherits="a_Commerce.OrdineEffettuato1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>a Commerce Ordine Effettuato</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    



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

        &nbsp;&nbsp;&nbsp; Home&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Catalogo&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Utente&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        Impostazioni&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
        ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------<br />
        <asp:ImageButton ID="ImageButton2" runat="server" Height="51px" 
            ImageUrl="~/Image/1489415377_home.png" Width="62px" 
            CausesValidation="False" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:ImageButton ID="ImageButton5" runat="server" Height="51px" 
            ImageUrl="~/Image/1489411155_search.png" Width="62px" 
            CausesValidation="False" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:ImageButton ID="ImageButton3" runat="server" Height="51px" 
            ImageUrl="~/Image/1489415630_user.png" Width="62px" 
            CausesValidation="False" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:ImageButton ID="ImageButton4" runat="server" Height="51px" 
            ImageUrl="~/Image/1489416013_settings.png" Width="62px" 
            CausesValidation="False" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------<br />
        <asp:SiteMapPath ID="SiteMapPath1" runat="server">
        </asp:SiteMapPath>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LoginName ID="LoginName2" runat="server" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LoginStatus ID="LoginStatus1" runat="server" />
        <br />
        ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------<br />
        
        ----->
        
        
        
        
        <br />
        <br />
        <br /><font color="red" size="6">COMPLIMENTI , HAI COMPLETATO L&#39; ORDINE !!!!</font>
        <br />
        &nbsp;&nbsp;&nbsp; <br />
        &nbsp;Nome&nbsp; [TEST]&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Width="600px"></asp:TextBox>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        Indirizzo e-mail :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:TextBox ID="TextBox1" runat="server" Width="607px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="TextBox1" ErrorMessage="* Campo Obbligatorio">* Campo Obbligatorio</asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Height="61px" 
            Text="Ricevi Mail Conferma Ordine" Width="741px" />
        <br />
        <br />
        <asp:Button ID="Button5" runat="server" Height="45px" 
            Text="Archivia Carrello -&gt; Ordine" Width="741px" />
        <br />
        <br />
        <br />
        <br /><font color="black">RICEVERAI UNA MAIL CON :</font><br />
        <br />
        - Riepilogo Ordine<br />
        - Ricevuta pagamento / Fattura<br />
        <br />
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" Height="36px" 
            Text="Torna a Home Page" Width="741px" />
        <br />
        <br />
        <asp:Button ID="Button3" runat="server" Height="36px" 
            Text="Torna al Catalogo" Width="741px" />
        <br />
        <br />
        <asp:Button ID="Button4" runat="server" Height="36px" 
            Text="Log Out - Esci" Width="741px" />
        &nbsp;?<br />
        <br />
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
