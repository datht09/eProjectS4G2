<%@ page contentType="text/html; charset=UTF-8" %>

<%@ taglib prefix="s" uri="/struts-tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="mrBean" scope="session" class="DataAccess.DBFunction"/>

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
        <c:if test="${user==null}">
            <c:redirect url="Login.jsp"/>
        </c:if>
        <c:set var="query" value="${mrBean.getQueryById(param['id'])}"/>
        <!--MAIN WRAPPER--> 
        <div class="main-wrapper">
            <!-- Mobile Only Navigation - 2 types each for (480px to 640px) and (640px to 960px) wide device screens -->
            <header id="mobile-header" class="clearfix hidden-desktop">
                <div id="nav">
                    <ul id="main-nav">
                        <!--<li><a class="scroll-link" href="#showcase" data-soffset="0">Showcase</a></li>-->
                        <li><a class="scroll-link" href="#home" id="home-linker" data-soffset="0">Home</a></li>
                        <li><a class="scroll-link" href="#news" id="news-linker" data-soffset="0">My Complaints</a></li>
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
                        <a class="scroll-link" href="HomePage.jsp?index=1" id="home-linker" data-soffset="100">home</a>
                    </li>
                    <li class="logo-wrap">
                        <a class="scroll-link logo" href="#body" data-soffset="100"><img src="images/logo.png"/></a>
                    </li>
                    <li>
                        <a class="scroll-link" href="HomePage.jsp?index=1#report" id="mycomplaints-linker" data-soffset="100">my complaints</a>
                    </li>
                </ul>
            </div>

            <section id="complaint-detail" class=" master-section">
                <div id="promo1" class="single_post_bg">
                    <div id="post-181" class="page-single">

                        <div class="container-fluid pad-bottom-main full-bg">
                            <div class="row-fluid">
                                <div class="container">
                                    <div class="row add-top">
                                        <article class="span12">
                                            <div class="wrap-pad">
                                                <div class="shoutout"><h2>${query.subject}</h2>
                                                        ${query.content}
                                                </div>
                                            </div>
                                                <c:if test="${query.status == 0}">
                                        <h3 class="promo-text" ><span>Status: Pending</span></h3>
                                    </c:if>
                                    <c:if test="${query.status == 1}">
                                        <h3 class="promo-text"><span>Status: Processing</span></h3>
                                    </c:if>
                                    <c:if test="${query.status == 2}">
                                        <h3 class="promo-text"><span style="background: #009900;">Status: Resolved</span></h3>
                                    </c:if>
                                    <c:if test="${query.status == 3}">
                                        <h3 class="promo-text"><span style="background: #CC0000;">Status: Not Resolved</span></h3>
                                    </c:if>
                                    <c:if test="${query.status == 4}">
                                        <h3 class="promo-text"><span style="background: #CC0000;">Status: Cancel</span></h3>
                                    </c:if>
                                        </article>
                                    </div>

                                    <div class="row add-top-more">
                                        <article class="span12">
                                            <h3 class="promo-text-inv-yellow darken"><span>All Replies</span></h3>
                                        </article>
                                    </div>

                                    <div class="row add-bottom">
                                        <article class="span12">
                                            <div>
                                                <ul class="cbp_tmtimeline">
                                                    <c:forEach items="${mrBean.getListReply(query.id)}" var="reply">
                                                        <li style="margin-bottom: 45px">
                                                            <time class="cbp_tmtime"><span style="font-size: 1.2em">${reply.username}</span></time>
                                                            <img class="cbp_tmicon cbp_tmicon-phone" src='${mrBean.getAccDetails(reply.username, 2).imageurl}'/>
                                                            <div class="cbp_tmlabel">
                                                                <h5>${reply.date}</h5>
                                                                <p style="color: #f0fff0">${reply.content}</p>
                                                            </div>
                                                        </li>
                                                    </c:forEach>
                                                    <li>
                                                        <form name="sendReplyForm" id="contactForm" action="sendReplyAction" method="post">
                                                            <div class="input-group wall-comment-reply">
                                                                <input type="hidden" name="username" value="${user}"/>
                                                                <input type="hidden" name="queryID" value="${query.id}"/>
                                                                <textarea  id="msg"  rows="3" cols="40" name="content" placeholder="Type your message here..."></textarea>
                                                                <span class="input-group-btn">
                                                                    <button type="submit" name="submit" id="submit" class="btn btn-renova-alt add-top-half">Reply</button>
                                                            </div>
                                                        </form>
                                                    </li>
                                                </ul>
                                            </div>
                                        </article>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </section>
        </div>








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