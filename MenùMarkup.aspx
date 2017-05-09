<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="MenùMarkup.aspx.vb" Inherits="a_Commerce.MenùMarkup" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">





    <div>
        <link href="MarkupMenu.css" rel="stylesheet" type="text/css" />

<nav>
    <ul class="cf">
        <li><a href="#">Menu Item 1</a></li>
        <li><a class="dropdown" href="#">Menu Item 2</a>
            <ul>
                <li><a href="#">Sub-menu Item 1</a></li>
                <li><a href="#">Sub-menu Item 2</a></li>
                <li><a href="#">Sub-menu Item 3</a></li>
            </ul>
            </li>
        <li><a href="#">Menu Item 3</a></li>
        <li><a href="#">Menu Item 4</a></li>
    </ul>
</nav>


    </div>
    </form>
</body>
</html>
