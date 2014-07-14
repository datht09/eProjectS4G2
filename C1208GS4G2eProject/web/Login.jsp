<%@ page contentType="text/html; charset=UTF-8" %>

<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Helpdesk</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="Highly unique creative theme built with Bootstrap">
        <meta name="author" content="Designova">

        <link href="assets/css/bootstrap.css" rel="stylesheet">
        <link href="assets/css/bootstrap-responsive.css" rel="stylesheet">
        <link href="assets/css/extension.css" rel="stylesheet">
        <link href="assets/css/typography.css" rel="stylesheet">
        <link href="assets/css/font-awesome.min.css" rel="stylesheet"> 
        <link href="stylesheets/portfolio.css" rel="stylesheet"/>
        <link href="stylesheets/isotope.css" rel="stylesheet">
        <link href="stylesheets/colorbox.css" rel="stylesheet"/>
        <link href="stylesheets/flexslider.css" rel="stylesheet"/>  
        <link href="stylesheets/hoverdir.css" rel="stylesheet"/>
        <link href="stylesheets/jquery.fancybox-1.3.4.css" media="screen" rel="stylesheet"/>
        <link href="stylesheets/price-table.css" rel="stylesheet" />
        <link href="stylesheets/intro.css" rel="stylesheet" />
        <link href="stylesheets/timeline.css" rel="stylesheet" />
        <link href="stylesheets/jquery.tweet.css" rel="stylesheet"/>
        <link href="stylesheets/responsive-nav.css" rel="stylesheet">
        <link href="stylesheets/style.css" rel="stylesheet">

        <script src="javascripts/modernizr.custom.js"></script>

        <link rel="shortcut icon" href="assets/ico/favicon.ico">

        <style>
            #ticker ul.tweet_list {
                min-height: 80px;
                height:120px;
                overflow-y:hidden;
            }
            #ticker .tweet_list li {
                min-height: 80px;
                height:120px;
            }
            #colorbox{
                min-height: 1300px !important;
            }
            #cboxTitle{
                height: 30px !important;
                position: absolute !important;
                padding: 0px !important;
            }
            #cboxClose{
                position: absolute !important;
                margin-top: 15px !important;
                right: 0px !important
            }
            #cboxClose:hover{
                background: #777 url(images/close.png) no-repeat center center
            }
            #cboxContent{
                padding-top: 37px !important;
            }
        </style>
    </head>

    <body id="body">

        <!--MAIN WRAPPER--> 
        <div class="main-wrapper">
            <!-- Mobile Only Navigation - 2 types each for (480px to 640px) and (640px to 960px) wide device screens -->
            <header id="mobile-header" class="clearfix hidden-desktop">
                <div id="nav">
                    <ul id="main-nav">
                        <!--<li><a class="scroll-link" href="#showcase" data-soffset="0">Showcase</a></li>-->
                        <li><a class="scroll-link" href="#login" id="login-linker" data-soffset="0">Login</a></li>
                        <li><a class="scroll-link" href="#register" id="register-linker" data-soffset="0">Register</a></li>
                    </ul>
                </div>
            </header>

            <div id="badge">
                <img alt="renova" title="renova" src="images/badge.png"/>
            </div>
            <!-- SHOWCASE BLOCK -->
            <section id="showcase" class="clearfix master-section">	
                <div class="wrapper">
                    <div id="container-folio" class="scroll-content beneath-intro">	
                    </div> 
                </div> 
            </section>
            
           
            
            
            
<!--/ LOGIN -->
            <section id="login" class=" master-section">
                <div class="row-fluid">
                    <section class="container">
                        <div class="row add-top-main">
                            <article class="span12">
                                <div class="thumb-icon"><img alt="renova" title="renova" src="images/icons/01.png"/></div>
                                <h1 class="main-heading"><span>Login</span></h1>
                            </article>
                        </div>

                        <div class="row">
                            <article class="span12 text-center">
                                <div id="fname"  class="alert alert-error error add-top">
                                    Name must not be empty
                                </div>
                                <div id="fpass" class="alert alert-error  error add-top">
                                    Password must not be empty
                                </div>
                            </article>
                        </div>

                        <div class="row add-bottom-main">
                            <form name="myform" id="loginForm" action="sendcontact.php" enctype="multipart/form-data" method="post">
                                <article class="span4 offset4">
                                    <input size="100" type="text" name="name" id="username" placeholder="username">
                                    <input type="text"  size="30" id="password" name="password" placeholder="password">
                                    <button type="submit" name="submit" id="submit" class="btn btn-renova-alt add-top-half">Login</button>
                                </article>
                            </form>
                        </div>
                    </section>
                </div><!--/ row-fluid-->   
                <a class="scroll-link" href="#register" data-soffset="100"><div id="scroll"></div></a>
            </section><!--/ container-->   

            <!-- Desktop Only NAVIGATION -->
            <div class="navigation hidden-phone hidden-tablet">
                <ul id="main-nav">
                    <li>
                        <a class="scroll-link" href="#login" id="about-linker" data-soffset="100">login</a>
                    </li>
                    <li class="logo-wrap">
                        <a class="scroll-link logo" href="#body" data-soffset="100"><img alt="renova" title="renova" src="images/logo.png"/></a>
                    </li>
                    <li>
                        <a class="scroll-link" href="#register" id="newsreel-linker" data-soffset="100">register</a>
                    </li>
                </ul>
            </div>
<!--/ LOGIN END -->




<!--/ REGISTER -->
            <section id="register" class="master-section">
                <section class="container-fluid inner mob-bg-remove">
                    <div class="row-fluid">
                        <section class="container">
                            <div class="row add-top-main">
                                <article class="span12">
                                    <div class="thumb-icon"><img alt="renova" title="renova" src="images/icons/01.png"/></div>
                                    <h1 class="main-heading"><span>Register</span></h1>
                                    <!--<h3 class="promo-text"><span>Lorem ipsum dolor sit amet, consectetur..</span></h3>-->
                                </article>
                            </div>

                            <div class="row">
                                <article class="span12 text-center">
                                    <div id="fname"  class="alert alert-error error add-top">
                                        Name must not be empty
                                    </div>
                                    <div id="fmail" class="alert alert-error  error add-top">
                                        Please provide a valid email
                                    </div>
                                    <div id="fmsg" class="alert alert-error  error add-top">
                                        Message should not be empty
                                    </div>
                                </article>
                            </div>

                            <div class="row add-bottom-main">
                                <form name="myform" id="registerForm" action="sendcontact.php" enctype="multipart/form-data" method="post">
                                    <article class="span4 offset4">
                                        <input size="100" type="text" name="username" id="username" placeholder="username">
                                        <input size="100" type="text" name="password" id="password" placeholder="password">
                                        <input size="100" type="text" name="cPassword" id="cPassword" placeholder="confirm password">
                                        <input size="100" type="text" name="fullName" id="fullName" placeholder="full name">
                                        <input type="text"  size="30" id="email" name="email" placeholder="email">
                                        <input size="100" type="text" name="address" id="address" placeholder="address">
                                        <input size="100" type="text" name="phone" id="phone" placeholder="phone number">
                                        <input size="100" type="text" name="avatar" id="avatar" placeholder="avatar">
                                        <input size="100" type="radio" name="department" id="department" placeholder="department">
                                        <button type="submit" name="submit" id="submit" class="btn btn-renova-alt add-top-half">Register</button>
                                    </article>
                                </form>
                            </div>
                        </section><!--/ container-->        
                    </div><!--/ row-fluid-->   
                </section><!--/ container-->       
            </section><!--/ page-->
<!--/ REGISTER END -->




            <!-- page:starts-->
            <section class="footer container-fluid section">
                <div class="row-fluid">
                    <section class="container">
                        <div class="row">
                            <article class="contactus span12 text-center">
                                <a href="#" class="logo"><img alt="renova" title="renova" src="images/foot-badge.png"></a>
                                <h1>FPT-Aptech <span>|</span> C1208G #G2</h1>
                            </article>
                        </div>

                        <div class="row foot-soc">
                            <article class="span12 text-center">
                                <nav class="social-links">
                                    <a class="facebook" href="http://facebook.com/" target="_blank">
                                        <img title="renova" src="images/footer_facebook.png" >
                                    </a>
                                    <a class="twitter" href="http://twitter.com/" target="_blank">
                                        <img title="renova" src="images/footer_twitter.png" >
                                    </a>
                                    <a class="google" href="http://google.com/" target="_blank">
                                        <img title="renova" src="images/footer_google.png" >
                                    </a>
                                    <a class="linkedin" href="http://linkedin.com/" target="_blank">
                                        <img title="renova" src="images/footer_linkedin.png" >
                                    </a>
                                    <a class="dribbble" href="http://dribbble.com/" target="_blank">
                                        <img title="renova" src="images/footer_dribble.png" >
                                    </a>
                                    <a class="pinterest" href="http://pinterest.com/" target="_blank">
                                        <img title="renova" src="images/footer_pinterest.png">
                                    </a>
                                    <a class="rss" href="http://rss.com/" target="_blank">
                                        <img title="renova" src="images/footer_rss.png" >
                                    </a>
                                </nav>
                            </article>
                        </div>
                    </section>
                </div>
            </section>

            <section class="footer-down container-fluid section">
                <div class="row-fluid">
                    <section class="container">
                        <div class="row">
                            <article class="span12">
                                <div class="copyright text-center">        
                                    <p>Copyright &copy; 2014 FPT-Aptech | C1208G #G2.<br/></p>        
                                </div>
                            </article>
                        </div>
                    </section>
                </div>
            </section>
            <!--page:ends-->

        </div>
        <!--main-wrapper:ends-->
        
        <!-- Le javascript
            ================================================== --> 
        <!-- Placed at the end of the document so the pages load faster --> 

        <script src="javascripts/jquery.js" type="text/javascript"></script> 
        <script src="assets/js/bootstrap-transition.js" type="text/javascript"></script> 
        <script src="assets/js/bootstrap-alert.js" type="text/javascript"></script> 
        <script src="assets/js/bootstrap-modal.js" type="text/javascript"></script> 
        <script src="assets/js/bootstrap-dropdown.js" type="text/javascript"></script> 
        <script src="assets/js/bootstrap-scrollspy.js" type="text/javascript"></script> 
        <script src="assets/js/bootstrap-tab.js" type="text/javascript"></script> 
        <script src="assets/js/bootstrap-tooltip.js" type="text/javascript"></script> 
        <script src="assets/js/bootstrap-popover.js" type="text/javascript"></script> 
        <script src="assets/js/bootstrap-button.js" type="text/javascript"></script> 
        <script src="assets/js/bootstrap-collapse.js" type="text/javascript"></script> 
        <script src="assets/js/bootstrap-carousel.js" type="text/javascript"></script> 
        <script src="assets/js/bootstrap-typeahead.js" type="text/javascript"></script> 
        <script src="assets/js/bootstrap-affix.js" type="text/javascript"></script> 
        <script src="javascripts/jquery.waitforimages.js"></script> 
        <script src="javascripts/modernizr.custom.js" type="text/javascript"></script>
        <script src="javascripts/waypoints.min.js" type="text/javascript"></script>
        <script src="javascripts/jquery.hoverdir.js" type="text/javascript"></script>
        <script src="javascripts/jquery.backstretch.min.js" type="text/javascript"></script>	 
        <script src="javascripts/jquery.colorbox.js" type="text/javascript"></script>  
        <script src="javascripts/jquery.isotope.min.js" type="text/javascript"></script> 
        <script src="javascripts/jquery.fancybox-1.3.4.js" type="text/javascript" ></script>
        <script type="text/javascript" src="javascripts/jquery.tweet.js"></script>
        <script defer src="javascripts/jquery.flexslider.js"></script>   
        <script src="javascripts/form-validation.js" type="text/javascript"></script>   
        <script src="javascripts/responsive-nav.js" type="text/javascript" ></script>
        <script src="javascripts/scroll.js" type="text/javascript"></script> 
        <script src="javascripts/script.js" type="text/javascript"></script> 

        <script>
            var navigation = responsiveNav("#nav", {// Selector: The ID of the wrapper
                animate: true, // Boolean: Use CSS3 transitions, true or false
                transition: 400, // Integer: Speed of the transition, in milliseconds
                label: "Menu", // String: Label for the navigation toggle
                insert: "after", // String: Insert the toggle before or after the navigation
                customToggle: "", // Selector: Specify the ID of a custom toggle
                openPos: "relative", // String: Position of the opened nav, relative or static
                jsClass: "js", // String: 'JS enabled' class which is added to <html> el
                init: function() {
                }, // Function: Init callback
                open: function() {
                }, // Function: Open callback
                close: function() {
                } // Function: Close callback
            });
        </script>

        <!-- Full Screen Background Images are defined via JS here: -->
        <script>
            $.backstretch([
                "images/bg1.jpg",
                "images/bg2.jpg",
                "images/bg3.jpg"
            ], {
                fade: 3000,
                duration: 4000
            });
        </script>   

    </body>
</html>