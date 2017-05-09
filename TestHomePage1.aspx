<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="HomePage.aspx.vb" Inherits="a_Commerce.HomePage" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">


<div>













<script src="js/jquery.min.js" type="text/javascript"></script>
<head id="Head2" runat="server">
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
    <meta name="description" content="We are providing you fixed layout website templates,responsive website templates with master pages - Live preview available" />
    <meta name="keywords" content="Dotnet templates,Asp.net templates, asp.net website templates, asp.net master page templates, asp.net theme templates,bootstrap templates for asp.net,bootstrap templates for dot net" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Responsive Css Menu</title>
    <!-- Open Graph -->
    <meta property="og:type" content="website templates" />
    <meta property="og:title" content="website templates for asp.net | aspxtemplates.com" />
    <meta property="og:description" content="We are providing you fixed layout website templates,responsive website templates with master pages - Live preview available,bootstrap templates for asp.net,bootstrap templates for dot net" />
    <meta property="og:site_name" content="aspxtemplates" />
    <!-- Css Styles -->
    <link href="../../../assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="../../../assets/css/custom.css" rel="stylesheet" type="text/css" />
    <link href="../../../assets/css/animated.css" rel="stylesheet" type="text/css" />
    <link href="../../../assets/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="css/blue.css" rel="stylesheet" type="text/css" />
    <link href="css/pink.css" rel="stylesheet" type="text/css" />
    <link href="css/StyleSheet.css" rel="stylesheet" type="text/css" />
    <!-- Webmaster Tools Site Verification -->
    <meta name="google-site-verification" content="JmOnIWLMcmXajTc-MY458H8r9OSlVKbF_4YzNKShGCQ" />
    <!-- fonts -->
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400italic,700italic,400,700"
        rel="stylesheet" type="text/css">
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
        rel="stylesheet" type="text/css" />
    <%--<link href="assets/css/font-awesome.min.css" rel="stylesheet" type="text/css" />--%>
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <form id="form2" runat="server">









    <div class="navbar navbar-default navbar-fixed-top bs-docs-nav" role="banner">
        <div class="container">
            <div class="row">
                <div class="col-lg-9">
                    <div class="thumbnail">
                        <script type="text/javascript">
                            var $mover = $('.divbox'),
  $currentEl = $('.a1.current'),
  currentWidth = $currentEl.outerWidth(),
  currentLeftPos = $currentEl.position().left;

                            if ($('.a1.current').length) {
                                $mover.css({
                                    left: currentLeftPos,
                                    width: currentWidth
                                });
                            }

                            $('.a1').on('mouseover', function () {
                                var thisWidth = $(this).outerWidth();
                                var thisLeftPos = $(this).position().left;

                                $mover.stop().animate({
                                    left: thisLeftPos,
                                    width: thisWidth
                                }, 'slow');
                            });

                            $('.a1').click(function (event) {

                                // comment the next line out to allow links to 'work'
                                event.preventDefault();
                                ///////////////////////

                                if (!$(this).hasClass('current')) {
                                    $(this).addClass('current').parent().siblings().children().removeClass('current');
                                }
                            });


                            $('#nav').on('mouseout', function (event) {
                                var $currentEl = $('.a1.current'),
		currentWidth = $currentEl.outerWidth(),
		currentLeftPos = $currentEl.position().left;

                                $mover.stop().animate({
                                    left: currentLeftPos,
                                    width: currentWidth
                                }, 'slow');
                            });


                        </script>
                        <script type="text/javascript">
                            $("#nav").addClass("js").before('<div id="menu">Menu</div>');
                            $("#menu").click(function () {
                                $("#nav").toggle();
                            });
                            $(window).resize(function () {
                                if (window.innerWidth > 768) {
                                    $("#nav").removeAttr("style");
                                }
                            });
                        </script>
                        <%--  ---------------------------------------- pink ------------------------------%>
                        <script type="text/javascript">
                            var $moverpink = $('.divboxpink'),
  $currentElpink = $('.a.current'),
  currentWidth = $currentElpink.outerWidth(),
  currentLeftPos = $currentElpink.position().left;

                            if ($('.a.current').length) {
                                $moverpink.css({
                                    left: currentLeftPos,
                                    width: currentWidth
                                });
                            }

                            $('.a').on('mouseover', function () {
                                var thisWidth = $(this).outerWidth();
                                var thisLeftPos = $(this).position().left;

                                $moverpink.stop().animate({
                                    left: thisLeftPos,
                                    width: thisWidth
                                }, 'slow');
                            });

                            $('.a').click(function (event) {

                                // comment the next line out to allow links to 'work'
                                event.preventDefaultpink();
                                ///////////////////////

                                if (!$(this).hasClass('current')) {
                                    $(this).addClass('current').parent().siblings().children().removeClass('current');
                                }
                            });


                            $('#pink').on('mouseout', function (event) {
                                var $currentElpink = $('a.current'),
		currentWidth = $currentElpink.outerWidth(),
		currentLeftPos = $currentElpink.position().left;

                                $moverpink.stop().animate({
                                    left: currentLeftPos,
                                    width: currentWidth
                                }, 'slow');
                            });


                        </script>
                        <script type="text/javascript">
                            $("#pink").addClass("pi").before('<div id="pinkmenu">Menu</div>');
                            $("#pinkmenu").click(function () {
                                $("#pink").toggle();
                            });
                            $(window).resize(function () {
                                if (window.innerWidth > 768) {
                                    $("#pink").removeAttr("style");
                                }
                            });
                        </script>
                        <%--      ---------------------------------------- blue -------------------------------%>
                        <div class="boxmoveblue">
                            <div class="divboxblue">
                            </div>
                            <ul id="blue">
                                <li class="li"><a target="_blank" href="http://www.aspxtemplate.com" class="aa">
                                    <span>HOME</span></a></li>
                                <li class="li"><a target="_blank" href="http://www.aspxtemplate.com" class="aa">
                                    <span>CATALOGO</span></a></li>
                                <li class="li"><a target="_blank" href="http://www.aspxtemplate.com" class="aa">
                                    <span>PROFILO UTENTE</span></a></li>
                                <li class="li"><a target="_blank" href="http://www.aspxtemplate.com" class="aa">
                                    <span>IMPOSTAZIONI</span></a></li>
                                <li class="li"><a target="_blank" href="http://www.aspxtemplate.com" class="aa">
                                    <span>CONTACT</span></a></li>
                            </ul>
                        </div>
                        <script type="text/javascript">
                            var $moverblue = $('.divboxblue'),
  $currentElblue = $('.aa.current'),
  currentWidth = $currentElblue.outerWidth(),
  currentLeftPos = $currentElblue.position().left;

                            if ($('.aa.current').length) {
                                $moverblue.css({
                                    left: currentLeftPos,
                                    width: currentWidth
                                });
                            }

                            $('.aa').on('mouseover', function () {
                                var thisWidth = $(this).outerWidth();
                                var thisLeftPos = $(this).position().left;

                                $moverblue.stop().animate({
                                    left: thisLeftPos,
                                    width: thisWidth
                                }, 'slow');
                            });

                            $('.a').click(function (event) {

                                // comment the next line out to allow links to 'work'
                                event.preventDefaultblue();
                                ///////////////////////

                                if (!$(this).hasClass('current')) {
                                    $(this).addClass('current').parent().siblings().children().removeClass('current');
                                }
                            });


                            $('#blue').on('mouseout', function (event) {
                                var $currentElblue = $('.aa.current'),
		currentWidth = $currentElblue.outerWidth(),
		currentLeftPos = $currentElblue.position().left;

                                $moverblue.stop().animate({
                                    left: currentLeftPos,
                                    width: currentWidth
                                }, 'slow');
                            });


                        </script>
                        <script type="text/javascript">
                            $("#blue").addClass("bl").before('<div id="bluemenu">Menu</div>');
                            $("#bluemenu").click(function () {
                                $("#blue").toggle();
                            });
                            $(window).resize(function () {
                                if (window.innerWidth > 768) {
                                    $("#blue").removeAttr("style");
                                }
                            });
                        </script>
                        <div class="gap">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-3">
        </div>
    </div>
    <%-- ----------------- Scripts -------------------- --%>
    <%--  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js" type="text/javascript"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"
        type="text/javascript"></script>--%>
    <script src="../../../assets/js/jquery.js" type="text/javascript"></script>
    <script src="../../../assets/js/bootstrap.js" type="text/javascript"></script>
    <script src="../../../assets/js/jquery.textillate.js" type="text/javascript"></script>
    <script src="../../../assets/js/jquery.lettering.js" type="text/javascript"></script>
    <script src="../../../assets/js/jquery.fittext.js" type="text/javascript"></script>
    <script src="../../../assets/js/wow.min.js" type="text/javascript"></script>
    <!-- Navbar -->
    <script type='text/javascript'>
        $(document).ready(function () {
            function toggleNavbarMethod() {
                if ($(window).width() > 768) {
                    $('.navbar .dropdown').on('mouseover', function () {
                        $('.dropdown-toggle', this).trigger('click');
                    }).on('mouseout', function () {
                        $('.dropdown-toggle', this).trigger('click').blur();
                    });
                }
                else {
                    $('.navbar .dropdown').off('mouseover').off('mouseout');
                }
            }
            // toggle navbar hover
            toggleNavbarMethod();

            // bind resize event
            $(window).resize(toggleNavbarMethod);
        });        
    </script>
    <script type="text/javascript">
        jQuery(document).ready(function () {
            var offset = 220;
            var duration = 500;
            jQuery(window).scroll(function () {
                if (jQuery(this).scrollTop() > offset) {
                    jQuery('.back-to-top').fadeIn(duration);
                } else {
                    jQuery('.back-to-top').fadeOut(duration);
                }
            });

            jQuery('.back-to-top').click(function (event) {
                event.preventDefault();
                jQuery('html, body').animate({ scrollTop: 0 }, duration);
                return false;
            })
        });
    </script>
    <a href="#" class="back-to-top">
        <%--↑--%></a>
    <%--  <script type="text/javascript">
         $( document ).ready(function() {
             $('.tlt3').textillate({
               minDisplayTime: 3000, 
       in: {
           effect: 'fadeInRightBig',
                     delayScale: 2,                                   
                     delay: 50,
                     sync: true,
                     shuffle: true

       },
       out: {
             effect: 'fadeOutLeftBig',             
             shuffle: true,
             sync: true
       },
       loop: true
       });       
     });
    </script>--%>
    <script>
        new WOW().init();
    </script>
    <script type="text/javascript">
         $( document ).ready(function() {
             $('.tlt').textillate({
              minDisplayTime: 1800, 
       in: {
           effect: 'fadeInLeftBig',
                     delayScale: 2,                     
                     delay: 50,                     
                     sync: true,
                     shuffle: true

       },
       out: {
             effect: 'fadeOutRightBig',             
             shuffle: true,
             sync: true
       },
       loop: true
       });
       
     });
    </script>
    <script type="text/javascript">
         $( document ).ready(function() {
             $('.tlt2').textillate({
              minDisplayTime: 1800, 
       in: {
           effect: 'fadeInRightBig',
                     delayScale: 2,                                   
                     delay: 50,
                     sync: true,
                     shuffle: true

       },
       out: {
             effect: 'fadeOutLeftBig',             
             shuffle: true,
             sync: true
       },
       loop: true
       });       
     });
    </script>

    </form>
</body>



</div>

























<head id="Head1" runat="server">
<body> 
    <form id="form1" runat="server">
    </form>
<div style="height: 162px; width: 1221px">











    &nbsp;&nbsp;&nbsp; Home&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Catalogo&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; 
        Utente&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp; Impostazioni&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;F.A.Q&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; 
        Vendi&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; 
        Carrello<br />
        ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------<br />
        <asp:ImageButton ID="ImageButton2" runat="server" Height="51px" 
            ImageUrl="~/Image/1489415377_home.png" Width="62px" />
&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        <asp:ImageButton ID="ImageButton5" runat="server" Height="51px" 
            ImageUrl="~/Image/1489411155_search.png" Width="62px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
        <asp:ImageButton ID="ImageButton3" runat="server" Height="51px" 
            ImageUrl="~/Image/1489415630_user.png" Width="62px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:ImageButton ID="ImageButton4" runat="server" Height="51px" 
            ImageUrl="~/Image/1489416013_settings.png" Width="62px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        <asp:ImageButton ID="ImageButton9" runat="server" Height="58px" 
            ImageUrl="~/Image/faq.png" Width="68px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:ImageButton ID="ImageButton6" runat="server" Height="51px" 
            ImageUrl="~/Image/1489431596_money.png" Width="62px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:ImageButton ID="ImageButton8" runat="server" Height="53px" 
            ImageUrl="~/Image/1490212478_shopping-cart.png" Width="69px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------<br />
        <asp:SiteMapPath ID="SiteMapPath1" runat="server">
        </asp:SiteMapPath>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
            ID="Button7" runat="server" Text="Inizia Sessione" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button8" 
            runat="server" Text="Chiudi Sessione" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;Benvenuto 
        :&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LoginName ID="LoginName2" runat="server" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LoginStatus ID="LoginStatus1" runat="server" />
        <br />
        ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------</div>

    </div>
    <div style="font-weight: 700">
    <body background="\BackGround_Test\slider-bga.jpg">

 <div>
 
 <meta charset="utf-8">
  <title>SlidesJS Standard Code Example</title>
  <meta name="description" content="SlidesJS is a simple slideshow plugin for jQuery. Packed with a useful set of features to help novice and advanced developers alike create elegant and user-friendly slideshows.">
  <meta name="author" content="Nathan Searles">

  <!-- SlidesJS Required (if responsive): Sets the page width to the device width. -->
  <meta name="viewport" content="width=device-width">
  <!-- End SlidesJS Required -->

  <!-- CSS for slidesjs.com example -->



  <!--<link rel="stylesheet" href="css/example.css">
  <link rel="stylesheet" href="css/font-awesome.min.css">
  --->


  <!-- End CSS for slidesjs.com example -->

  <!-- SlidesJS Optional: If you'd like to use this design -->
  <style>
    body {
      -webkit-font-smoothing: antialiased;
      font: normal 15px/1.5 "Helvetica Neue", Helvetica, Arial, sans-serif;
      color: #232525;
      padding-top:0px;
    }

    #slides {
      display: none
    }

    #slides .slidesjs-navigation {
      margin-top:5px;
    }

    a.slidesjs-next,
    a.slidesjs-previous,
    a.slidesjs-play,
    a.slidesjs-stop {
      background-image: url(img/btns-next-prev.png);
      background-repeat: no-repeat;
      display:block;
      width:12px;
      height:18px;
      overflow: hidden;
      text-indent: -9999px;
      float: left;
      margin-right:5px;
    }

    a.slidesjs-next {
      margin-right:10px;
      background-position: -12px 0;
    }

    a:hover.slidesjs-next {
      background-position: -12px -18px;
    }

    a.slidesjs-previous {
      background-position: 0 0;
    }

    a:hover.slidesjs-previous {
      background-position: 0 -18px;
    }

    a.slidesjs-play {
      width:15px;
      background-position: -25px 0;
    }

    a:hover.slidesjs-play {
      background-position: -25px -18px;
    }

    a.slidesjs-stop {
      width:18px;
      background-position: -41px 0;
    }

    a:hover.slidesjs-stop {
      background-position: -41px -18px;
    }

    .slidesjs-pagination {
      margin: 7px 0 0;
      float: right;
      list-style: none;
    }

    .slidesjs-pagination li {
      float: left;
      margin: 0 1px;
    }

    .slidesjs-pagination li a {
      display: block;
      width: 13px;
      height: 0;
      padding-top: 13px;
      background-image: url(img/pagination.png);
      background-position: 0 0;
      float: left;
      overflow: hidden;
    }

    .slidesjs-pagination li a.active,
    .slidesjs-pagination li a:hover.active {
      background-position: 0 -13px
    }

    .slidesjs-pagination li a:hover {
      background-position: 0 -26px
    }

    #slides a:link,
    #slides a:visited {
      color: #333
    }

    #slides a:hover,
    #slides a:active {
      color: #9e2020
    }

    .navbar {
      overflow: hidden
    }
  </style>
  <!-- End SlidesJS Optional-->

  <!-- SlidesJS Required: These styles are required if you'd like a responsive slideshow -->
  <style>
    #slides {
      display: none
    }

    .container {
      margin: 0 auto
    }

    /* For tablets & smart phones */
    @media (max-width: 600px) {
      body {
        padding-left: 20px;
        padding-right: 20px;
      }
      .container {
        width: auto
      }
    }

    /* For smartphones */
    @media (max-width: 300px) {
      .container {
        width: auto
      }
    }

    /* For smaller displays like laptops */
    @media (min-width: 600px) and (max-width: 800px) {
      .container {
        width: 724px
      }
    }

    /* For larger displays */
    @media (min-width: 600px) {
      .container 
      {
        width: 600px
        
      }
    }
  </style>
  <!-- SlidesJS Required: -->
</head>


  <!-- SlidesJS Required: Start Slides -->
  <!-- The container is used to define the width of the slideshow -->
  <div class="container">
    <div id="slides">
      <img src="img/example-slide-1.jpg">
      <img src="img/example-slide-2.jpg">
      <img src="img/example-slide-3.jpg">
      <img src="img/example-slide-4.jpg">
    </div>
  </div>
  <!-- End SlidesJS Required: Start Slides -->

  <!-- SlidesJS Required: Link to jQuery -->
  <script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
  <!-- End SlidesJS Required -->

  <!-- SlidesJS Required: Link to jquery.slides.js -->

  <script src="jquery.slides.min.js"></script>

  <!-- End SlidesJS Required -->

  <!-- SlidesJS Required: Initialize SlidesJS with a jQuery doc ready -->
  <script>
      $(function () {
          $('#slides').slidesjs({
              width: 940,
              height: 528,
              play: {
                  active: true,
                  auto: true,
                  interval: 4000,
                  swap: true
              }
          });
      });
  </script>
  <!-- End SlidesJS Required -->

  <!----                     FINE                     SLIDER                        JS                SCRIPT            ---->


 </div>



  </div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        Già registrato ?&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        Nuovo Utente ?<br />
        <asp:Button ID="Button5" runat="server" Text="Log - in" Width="421px" 
            Height="44px" />
        <asp:Button ID="Button3" runat="server" Text="Mio Profilo" Width="422px" 
            Height="42px" />
        <asp:Button ID="Button6" runat="server" Text="Registrazione" Width="377px" 
            Height="43px" />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        Compra&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        Vendi&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
        &nbsp;<asp:Button 
            ID="Button1" runat="server" Text="Visualizza Catalogo (Compra)" 
            Width="600px" Height="284px" BorderColor="Black" Font-Bold="True" 
            Font-Size="XX-Large" />
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Inserisci oggetto (Vendita)" 
            Width="600px" Height="283px" BorderColor="Black" Font-Bold="True" 
            Font-Size="XX-Large" Font-Strikeout="False" />
        <br />
        <br />

        
        <footer>
        Official Partner :<br />
        ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------<br />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image11" runat="server" Height="77px" 
            ImageUrl="~/Sponsor_Image/FedEx_Logo_s.gif" Width="188px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image12" runat="server" Height="79px" 
            ImageUrl="~/Sponsor_Image/Logo_Bartolini_s.png" Width="211px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image15" runat="server" Height="78px" 
            ImageUrl="~/Sponsor_Image/Google_2015_logo.svg.png" Width="210px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image16" runat="server" Height="91px" 
            ImageUrl="~/Sponsor_Image/8867.Microsoft_5F00_Logo_2D00_for_2D00_screen.jpg" 
            Width="265px" />
&nbsp;<asp:Image ID="Image17" runat="server" Height="93px" 
            ImageUrl="~/Sponsor_Image/1287x929_vodafone_logo.jpg" Width="220px" />
        <br />
        <br />
        <span style="color: rgb(118, 118, 118); font-family: arial, sans-serif; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; white-space: nowrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(19, 26, 34); display: inline !important; float: none;">
        <asp:Button ID="Button4" runat="server" Text="Crediti" Width="418px" 
            Height="35px" />
        <asp:Button ID="Button10" runat="server" Text="Guida al sito" Width="391px" 
            Height="35px" />
        <asp:Button ID="Button11" runat="server" Text="Invia Suggerimento  [BETA]" Width="410px" 
            Height="35px" />
        </span>





        </footer>











        <footer>
        
        
        Prova di u n footer
        
        </footer>

















    </form>

  </body>

  </head>

</html>
