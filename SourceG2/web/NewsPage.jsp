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
                        <li><a class="scroll-link" href="#home" id="home-linker" data-soffset="0">Home</a></li>
                        <li><a class="scroll-link" href="#news" id="news-linker" data-soffset="0">News</a></li>
                    </ul>
                </div>
            </header>

            <div id="badge">
                <img src="images/badge.png"/>
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
                        <a class="scroll-link logo" href="#body" data-soffset="100"><img src="images/logo.png"/></a>
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
                                                    <a href="NewsDetail.jsp">Awesome chart shows 50 countries with homegrown tech titans, but only 13 of those nations are in Asia</a>
                                                </h2>
                                                <div class="blog-stats">
                                                    By <span class="stat_hl">designovawp</span> on <span class="stat_hl">
                                                        July 5th</span>
                                                </div>
                                                <nav>
                                                    <a href="#"><img style="height: 20px" src="images/news/icons/05.png"/></a>
                                                    <a href="#"><img style="height: 20px" src="images/news/icons/05.png"/></a>
                                                    <a href="#"><img style="height: 20px" src="images/news/icons/05.png"/></a>
                                                    <a href="#"><img style="height: 20px" src="images/news/icons/04.png"/></a>
                                                    <a href="#"><img style="height: 20px" src="images/news/icons/04.png"/></a>
                                                </nav></br>

                                                <div class="blog-thumb-single">
                                                    <img width="600" height="400" src="images/news/4.jpg" class=" wp-post-image" alt="2"></div>

                                                <div class="blog-para">
                                                    <p>
                                                        An interesting report from the Economist yesterday crunched data from the World Startup Report and lists the top three most valued tech companies in numerous countries. Of course, the US and China lead the world with the likes of Alibaba and Google topping the chart. In the top ten, there are only three Asian countries with their own tech titans: Japan, South Korea, and China. Australia appears in 13th place.
                                                    </p>
                                                </div>
                                                
                                            </section>
                                            
                                            <section class="add-bottom">
                                                <h2 class="blog-caps">
                                                    <a href="NewsDetail.jsp">Wing Up takes inspiration from Nintendo and Flappy Bird to make another addictive game from Vietnam</a>
                                                </h2>
                                                <div class="blog-stats">
                                                    By <span class="stat_hl">designovawp</span> on <span class="stat_hl">
                                                        July 5th</span>

                                                </div>                  
                                                <nav>
                                                    <a href="#"><img style="height: 20px" src="images/news/icons/05.png"/></a>
                                                    <a href="#"><img style="height: 20px" src="images/news/icons/05.png"/></a>
                                                    <a href="#"><img style="height: 20px" src="images/news/icons/05.png"/></a>
                                                    <a href="#"><img style="height: 20px" src="images/news/icons/05.png"/></a>
                                                    <a href="#"><img style="height: 20px" src="images/news/icons/04.png"/></a>
                                                </nav></br>
                                                <div class="blog-thumb-single">
                                                    <img width="600" height="400" src="images/news/5.jpg" class=" wp-post-image" alt="2"></div>

                                                <div class="blog-para">
                                                    <p>
                                                        There’s been hundreds of Flappy Bird clones out there ever since the simple game topped the charts across the world. Although there’s been some innovation on the original concept from Dong Nguyen’s dotGEARS with games like Mr. Flap or Freaking Math, most games have stuck to the original “creature goes through pipes” gameplay. And after the craze of 2048, some devs have even attempted to combine the two smash hits. 
                                                    </p>
                                                </div>
                                                
                                            </section>
                                            
                                            <section class="add-bottom">
                                                <h2 class="blog-caps">
                                                    <a href="NewsDetail.jsp">500 Startups-funded Vietnamese mobile app developer Greengar shuts down to pursue new projects</a>
                                                </h2>
                                                <div class="blog-stats">
                                                    By <span class="stat_hl">designovawp</span> on <span class="stat_hl">
                                                        July 5th</span>

                                                </div>                  
                                                <nav>
                                                    <a href="#"><img style="height: 20px" src="images/news/icons/05.png"/></a>
                                                    <a href="#"><img style="height: 20px" src="images/news/icons/05.png"/></a>
                                                    <a href="#"><img style="height: 20px" src="images/news/icons/04.png"/></a>
                                                    <a href="#"><img style="height: 20px" src="images/news/icons/04.png"/></a>
                                                    <a href="#"><img style="height: 20px" src="images/news/icons/04.png"/></a>
                                                </nav></br>
                                                <div class="blog-thumb-single">
                                                    <img width="600" height="400" src="images/news/6.jpg" class=" wp-post-image" alt="2"></div>

                                                <div class="blog-para">
                                                    <p>
                                                        There’s been a lot of drama in the Vietnamese startup ecosystem recently. A few weeks ago, Le Thi Thu Thuy, the CEO of VinEcom, Vietnam’s biggest ever ecommerce project stepped down from her position. Just yesterday, Rita Nguyen, the founder and CEO of MySquar, stepped down after an apparent power struggle. Today, we’ve got one more dramatic development. Greengar, one of Vietnam’s most promising mobile app startups, officially closed down. The announcement was made today on the Medium blog of the founder Truong Thanh Thuy. In a post titled “Failure of a success,” she states:
                                                    </p>
                                                </div>
                                                
                                            </section>
                                            
                                            <section class="add-bottom">
                                                <h2 class="blog-caps">
                                                    <a href="NewsDetail.jsp">Bet against your Facebook friends on this year’s World Cup with the help of Sepp.com</a>
                                                </h2>
                                                <div class="blog-stats">
                                                    By <span class="stat_hl">designovawp</span> on <span class="stat_hl">
                                                        July 5th</span>

                                                </div>                  
                                                <nav>
                                                    <a href="#"><img style="height: 20px" src="images/news/icons/05.png"/></a>
                                                    <a href="#"><img style="height: 20px" src="images/news/icons/05.png"/></a>
                                                    <a href="#"><img style="height: 20px" src="images/news/icons/05.png"/></a>
                                                    <a href="#"><img style="height: 20px" src="images/news/icons/05.png"/></a>
                                                    <a href="#"><img style="height: 20px" src="images/news/icons/04.png"/></a>
                                                </nav></br>
                                                <div class="blog-thumb-single">
                                                    <img width="600" height="400" src="images/news/7.jpg" class=" wp-post-image" alt="2"></div>

                                                <div class="blog-para">
                                                    <p>
                                                        If you’re like some of us at Tech In Asia, you’re staying up late into the night (or early morning) to catch a glimpse of amazing goals from folks like the now infamous Robin Van Persie. In the midst of this year’s World Cup, global tech companies are finding ways to capitalize on soccer fever. Facebook featured last night’s matches on its new Trending feature, Twitter has dedicated a hashtag and column, and even Google’s been sporting a World Cup doodle. From the little town of Da Nang, off of the central coast of Vietnam, comes friendly betting startup Sepp.com. 
                                                    </p>
                                                </div>
                                                
                                            </section>
                                            
                                            <section class="add-bottom">
                                                <h2 class="blog-caps">
                                                    <a href="NewsDetail.jsp">Appota, Vietnamese mobile content platform, secures series B funding</a>
                                                </h2>
                                                <div class="blog-stats">
                                                    By <span class="stat_hl">designovawp</span> on <span class="stat_hl">
                                                        July 5th</span>

                                                </div>                  
                                                <nav>
                                                    <a href="#"><img style="height: 20px" src="images/news/icons/05.png"/></a>
                                                    <a href="#"><img style="height: 20px" src="images/news/icons/05.png"/></a>
                                                    <a href="#"><img style="height: 20px" src="images/news/icons/04.png"/></a>
                                                    <a href="#"><img style="height: 20px" src="images/news/icons/04.png"/></a>
                                                    <a href="#"><img style="height: 20px" src="images/news/icons/04.png"/></a>
                                                </nav></br>
                                                <div class="blog-thumb-single">
                                                    <img width="600" height="400" src="images/news/8.jpg" class=" wp-post-image" alt="2"></div>

                                                <div class="blog-para">
                                                    <p>
                                                        Appota, one of Vietnam’s most promising mobile startups, has just raised an undisclosed series B funding with two investors from Japan and Singapore. This will mark a new chapter in the startup, which has up to now been mainly targeted at the domestic Vietnamese market. The new round of funding will go not only to expanding Appota’s interests at home but also targeting a more global market. 
                                                    </p>
                                                </div>
                                                
                                            </section>
                                            << 1,2,3,... >>

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
                                <a href="#" class="logo"><img src="images/foot-badge.png"></a>
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

        <!-- Full Screen Background images are defined via JS here: -->
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