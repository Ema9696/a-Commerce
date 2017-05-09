<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="TestMagneticButton.aspx.vb" Inherits="a_Commerce.TestMagneticButton" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">



<script src="js/jquery.min.js" type="text/javascript"></script>
<head id="Head1" runat="server">
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
    <form id="formx" runat="server">



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





</html>