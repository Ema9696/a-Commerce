<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="SplashTest1.aspx.vb" Inherits="a_Commerce.SplashTest1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
            <head>
                        <title>Intro Screen...</title>
             </head>
<body bgcolor="#000000" text="#FFFFFF">
<div id="splashcontainer" style="position:absolute;width:350px;"></div>
<layer id="splashcontainerns" width="450"></layer>
<script>
    var preloadimages = new Array("sun.gif", " sun.gif")
    var intervals = 2000
    var targetdestination = "http://www.vbdotnetheaven.com"
    var splashmessage = new Array()
    var openingtags = '<font face="Arial" size="4">'
    splashmessage[0] = '**Welcome to vbdotnetheaven**'
    splashmessage[1] = 'You will find here hell of code, articles and solution of your problems'
    splashmessage[2] = 'All about Microsoft Technology'
    splashmessage[3] = 'Contact us for your web problem solution'
    splashmessage[4] = 'We are always here to provide you the better solution'
    splashmessage[5] = 'Please stand by...'
    var closingtags = '</font>'
    var i = 0
    var ns4 = document.layers ? 1 : 0
    var ie4 = document.all ? 1 : 0
    var ns6 = document.getElementById && !document.all ? 1 : 0
    var theimages = new Array()
    if (document.images) {
        for (p = 0; p < preloadimages.length; p++) {
            theimages[p] = new Image()
            theimages[p].src = preloadimages[p]
        }
    }
    function displaysplash() {
        if (i < splashmessage.length) {
            sc_cross.style.visibility = "hidden"
            sc_cross.innerHTML = '<b><center>' + openingtags + splashmessage[i] + closingtags + '</center></b>'
            sc_cross.style.left = ns6 ? parseInt(window.pageXOffset) + parseInt(window.innerWidth) / 2 - parseInt(sc_cross.style.width) / 2 : document.body.scrollLeft + document.body.clientWidth / 2 - parseInt(sc_cross.style.width) / 2
            sc_cross.style.top = ns6 ? parseInt(window.pageYOffset) + parseInt(window.innerHeight) / 2 - sc_cross.offsetHeight / 2 :
            document.body.scrollTop + document.body.clientHeight / 2 - sc_cross.offsetHeight / 2
            sc_cross.style.visibility = "visible"
            i++
        }
        else {
            window.location = targetdestination
            return
        }
        setTimeout("displaysplash()", intervals)
    }
    function displaysplash_ns() {
        if (i < splashmessage.length) {
            sc_ns.visibility = "hide"
            sc_ns.document.write('<b>' + openingtags + splashmessage[i] + closingtags + '</b>')
            sc_ns.document.close()
            sc_ns.left = pageXOffset + window.innerWidth / 2 - sc_ns.document.width / 2
            sc_ns.top = pageYOffset + window.innerHeight / 2 - sc_ns.document.height / 2
            sc_ns.visibility = "show"
            i++
        }
        else {
            window.location = targetdestination
            return
        }
        setTimeout("displaysplash_ns()", intervals)
    }
    function positionsplashcontainer() {
        if (ie4 || ns6) {
            sc_cross = ns6 ? document.getElementById("splashcontainer") : document.all.splashcontainer
            displaysplash()
        }
        else if (ns4) {
            sc_ns = document.splashcontainerns
            sc_ns.visibility = "show"
            displaysplash_ns()
        }
        else
            window.location = targetdestination
    }
    window.onload = positionsplashcontainer
</script>
</body>
</html>