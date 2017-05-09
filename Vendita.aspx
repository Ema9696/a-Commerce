<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Vendita.aspx.vb" Inherits="a_Commerce.Vendita" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>a Commerce Vendita </title>
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

    
    &nbsp;&nbsp;&nbsp; Home&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Catalogo&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        Utente&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Impostazioni<br />
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
&nbsp;&nbsp;
        <br />
        ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------<br />
        <asp:SiteMapPath ID="SiteMapPath1" runat="server">
        </asp:SiteMapPath>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LoginName ID="LoginName2" runat="server" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LoginStatus ID="LoginStatus1" runat="server" />
        <br />
        ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------<br />
        
        ---->
        
        
        
        
        <br />
        &nbsp;&nbsp;&nbsp;
        Metti in vendita un oggetto <br />
        <br />
        <br style="background-color: #C0C0C0" />
        <br />
        &nbsp;&nbsp;&nbsp;
        Nome Oggetto&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:TextBox ID="TextBox1" runat="server" Width="352px"></asp:TextBox>
        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator">* Campo Obbligatorio</asp:RequiredFieldValidator>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;
        Descrizione&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:TextBox ID="TextBox2" runat="server" Height="59px" Width="353px"></asp:TextBox>
        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="TextBox2" ErrorMessage="RequiredFieldValidator">* Campo Obbligatorio</asp:RequiredFieldValidator>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;
        Prezzo&nbsp;&nbsp;(Es. 4.21 $)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; 
        <asp:TextBox ID="TextBox3" runat="server" Width="352px"></asp:TextBox>
        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="TextBox3" ErrorMessage="RequiredFieldValidator">* Campo Obbligatorio</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="TextBox3" ErrorMessage="RegularExpressionValidator" 
            ValidationExpression="[-+]?[0-9]*\.?[0-9]+"> * Il prezzo deve essere un valore numerico.</asp:RegularExpressionValidator>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;
        Data inserimento&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox4" runat="server" Width="352px" ReadOnly="True"></asp:TextBox>
        <br />
        <br />
      &nbsp;&nbsp;&nbsp;
      Data scadenza&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox5" runat="server" Width="354px"></asp:TextBox>
        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ControlToValidate="TextBox5" ErrorMessage="RequiredFieldValidator">* Campo Obbligatorio</asp:RequiredFieldValidator>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;
        Quantità&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox6" runat="server" Width="354px"></asp:TextBox>
        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ControlToValidate="TextBox6" ErrorMessage="RequiredFieldValidator">* Campo Obbligatorio</asp:RequiredFieldValidator>
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;
        [OPZIONALE]<br />
        &nbsp;&nbsp;&nbsp;
        Upload foto&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:FileUpload ID="FileUpload1" runat="server" Height="33px" Width="361px" />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button6" runat="server" Height="54px" Text="Vendi" 
            Width="531px" BackColor="#CCCCCC" BorderColor="Black" />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button7" runat="server" Text="Torna al Catalogo" 
            Width="531px" CausesValidation="False" />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button8" runat="server" Text="Torna a Home Page" 
            Width="531px" CausesValidation="False" />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;
        Hai Messo in vendita :&nbsp;&nbsp;
          <asp:Label ID="Label1" runat="server"></asp:Label>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" Height="16px" Width="163px">
        </asp:GridView>
        <br />
        <br />
        <br />
        <br />
        <br />
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
