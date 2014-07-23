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
        <link rel="stylesheet" id="blog-css" href="stylesheets/blog.css" type="text/css" media="all">

        <script src="javascripts/modernizr.custom.js"></script>

        <script type="text/javascript" src="javascripts/jquery.js"></script>
        <script type="text/javascript" src="javascripts/jquery-migrate.min.js"></script>
        <script type="text/javascript" src="javascripts/modernizr.custom.js"></script>

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
                background: #777 url(Images/close.png) no-repeat center center
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
                        <li><a class="scroll-link" href="#home" id="home-linker" data-soffset="0">Home</a></li>
                        <li><a class="scroll-link" href="#news" id="news-linker" data-soffset="0">News</a></li>
                    </ul>
                </div>
            </header>

            <div id="badge">
                <img src="Images/badge.png"/>
            </div>
            <!-- SHOWCASE BLOCK -->
            <section id="showcase" class="clearfix master-section">	
                <div class="wrapper">
                    <div id="container-folio" class="scroll-content beneath-intro">	
                    </div> 
                </div> 
            </section>
            
           
            <!-- Desktop Only NAVIGATION -->
            <div class="navigation hidden-phone hidden-tablet">
                <ul id="main-nav">
                    <li>
                        <a class="scroll-link" href="HomePage.jsp" id="home-linker" data-soffset="100">home</a>
                    </li>
                    <li class="logo-wrap">
                        <a class="scroll-link logo" href="#body" data-soffset="100"><img src="Images/logo.png"/></a>
                    </li>
                    <li>
                        <a class="scroll-link" href="NewsPage.jsp" id="news-linker" data-soffset="100">news</a>
                    </li>
                </ul>
            </div>
            
            
            <section id="news" class=" master-section">

                <div id="promo1" class="single_post_bg">
                    <div id="post-181" class="page-single">

                        <div class="container-fluid pad-bottom-main full-bg">
                            <div class="row-fluid">
                                <div class="container">            
                                    <div class="row add-top add-bottom">
                                        <article class="span9 blog-block">


                                            <section class="add-bottom">
                                                <h2 class="blog-caps">
                                                    <a href="">Wing Up takes inspiration from Nintendo and Flappy Bird to make another addictive game from Vietnam</a>
                                                </h2>
<!--                                                <div class="postformat"><img src="Images/regular.png" alt="post" title="Format"></div>-->
                                                <div class="blog-stats">
                                                    By <span class="stat_hl">designovawp</span> on <span class="stat_hl">
                                                        July 5th</span>

                                                </div>                  

                                                <div class="blog-thumb-single">
                                                    <img width="600" height="400" src="Images/news/3.jpg" class=" wp-post-image" alt="2"></div>

                                                <div class="blog-para">
                                                    <p>
                                                        There’s been hundreds of Flappy Bird clones out there ever since the simple game topped the charts across the world. Although there’s been some innovation on the original concept from Dong Nguyen’s dotGEARS with games like Mr. Flap or Freaking Math, most games have stuck to the original “creature goes through pipes” gameplay. And after the craze of 2048, some devs have even attempted to combine the two smash hits. 
                                                    </p>
                                                    <p>
                                                        But new games are still coming out of Vietnam. Games like School Cheater, 1Path, Chien Binh, Sky Garden, and more indicate that Vietnam has a vibrant gaming community. Vietnam’s capital Hanoi is home to Dong Nguyen, and it’s where many strong Vietnamese mobile gaming studios take up residence. Only a few degrees of separation exist between some of the founders of these games and the Flappy Bird creator. And now we come to Wing Up, an iOS and Android game that takes inspiration from Flappy Bird and Nintendo. Wing Up hails from an unknown developer named Tung Hoang, based out of Hanoi. The core principles behind Flappy Bird that made their way into Wing Up Wing Up basically uses the same key principles of mobile gaming that Flappy Bird employs. Many of the more simple one-off mobile games we see today follow in these footsteps, so it’s worth noting them here briefly: Simple game play that just requires one tap for action: This, unlike other more complex games like Horn, Oceanhorn, Bastion, etc. make the barrier to entry for new gamers very low. One level: This makes it so that the game is boiled down to the most basic action, can you do it or not? It also makes it easy to pass your mobile to someone else so they can play it too. Very easy to replay: One of the key things dotGEARS did was make it so easy to restart Flappy Bird. Although it was frustrating when the bird died, restarting was instant. This also made it easy to spend hours on a game that took less than a minute to play. Simplified retro graphics: Flappy Bird is certainly not a pioneer of retro games on mobile. Long before Flappy Bird hit the scene, many mobile games used old-school graphics. This is a motif that all the clones and admirers have taken on. Mobile ads: Especially for Vietnamese developers, one of the biggest lessons from the success of Flappy Bird is that there is some serious money to be made on mobile ads. After all, Dong Nguyen was reporting making over $50,000 a day from Flappy Bird. Each of these principles can be found on Wing Up, which put its own spin on a bird flying through space.
                                                    </p>
                                                    
                                                </div>
                                                
                                            </section>

                                        </article><!-- left-side : ends-->
                                        <article class="span3 blog-side-panel side-panel">
                                            		<section id="recent-posts-2" class="blog-side-panel widget_recent_entries">		<h2>Recent Posts</h2>		<ul>
                                                    <li>
                                                        <a href="http://designova.net/themes/wordpress/renova/?p=242">Quote Post</a>
                                                    </li>
                                                    <li>
                                                        <a href="http://designova.net/themes/wordpress/renova/?p=181">Hello World</a>
                                                    </li>
                                                    <li>
                                                        <a href="http://designova.net/themes/wordpress/renova/?p=168">Sample Audio Post</a>
                                                    </li>
                                                    <li>
                                                        <a href="http://designova.net/themes/wordpress/renova/?p=5">Hello world!</a>
                                                    </li>
                                                </ul>
                                            </section>
                                            <section id="archives-2" class="blog-side-panel widget_archive"><h2>Archives</h2>		<ul>
                                                    <li><a href="http://designova.net/themes/wordpress/renova/?m=201307">July 2013</a></li>
                                                    <li><a href="http://designova.net/themes/wordpress/renova/?m=201306">June 2013</a></li>
                                                </ul>
                                            </section>
                                                   </article> 
                                    </div><!-- row : ends -->



                                </div> 
                            </div>
                        </div>  

                    </div> 
                </div>  

            </section>
            
          
            



            <!-- page:starts-->
            <section class="footer container-fluid section">
                <div class="row-fluid">
                    <section class="container">
                        <div class="row">
                            <article class="contactus span12 text-center">
                                <a href="#" class="logo"><img src="Images/foot-badge.png"></a>
                                <h1>FPT-Aptech <span>|</span> C1208G #G2</h1>
                            </article>
                        </div>

                        <div class="row foot-soc">
                            <article class="span12 text-center">
                                <nav class="social-links">
                                    <a class="facebook" href="http://facebook.com/" target="_blank">
                                        <img title="renova" src="Images/footer_facebook.png" >
                                    </a>
                                    <a class="twitter" href="http://twitter.com/" target="_blank">
                                        <img title="renova" src="Images/footer_twitter.png" >
                                    </a>
                                    <a class="google" href="http://google.com/" target="_blank">
                                        <img title="renova" src="Images/footer_google.png" >
                                    </a>
                                    <a class="linkedin" href="http://linkedin.com/" target="_blank">
                                        <img title="renova" src="Images/footer_linkedin.png" >
                                    </a>
                                    <a class="dribbble" href="http://dribbble.com/" target="_blank">
                                        <img title="renova" src="Images/footer_dribble.png" >
                                    </a>
                                    <a class="pinterest" href="http://pinterest.com/" target="_blank">
                                        <img title="renova" src="Images/footer_pinterest.png">
                                    </a>
                                    <a class="rss" href="http://rss.com/" target="_blank">
                                        <img title="renova" src="Images/footer_rss.png" >
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
        <script src="javascripts/jquery.waitforImages.js"></script> 
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
                "Images/bg1.jpg",
                "Images/bg2.jpg",
                "Images/bg3.jpg"
            ], {
                fade: 3000,
                duration: 4000
            });
        </script>   

    </body>
</html>