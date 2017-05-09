<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AsideTest1.aspx.vb" Inherits="a_Commerce.AsideTest1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>aSide Test</title>
</head>
<body>
    <form id="form1" runat="server">


    <aside>
  <h1>Sidebar</h1>
  <section>
    <h2>Ricerca nel form:</h2>
     <form name="ricerca" method="post" action="/search">            
      <label> Parola chiave:                
       <input type="search" autocomplete="on" placeholder="article, section, ..." name="keyword" required                                maxlength="50">
      </label>            
      <input type="submit" value="ricerca">          
    </form>      
  </section>      
  <nav>          
   <h2>Categorie</h2>          
   <ul>             
    <li><a href="/categoria/multimedia">multimedia</a></li>             
    <li><a href="/categoria/text">marcatori testuali</a></li>             
    <li><a href="/categoria/form">forms</a></li>          
   </ul>      
  </nav>
</aside>













    </form>
</body>
</html>
