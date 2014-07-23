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

        <script src="javascripts/modernizr.custom.js"></script>

        <!--[if lt IE 9]>
              <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
                <link href="stylesheets/ie8.css" rel="stylesheet">
            <![endif]-->

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

        <c:set var="user" value="${sessionScope.user}"/>
        <c:if test="${user==null}">
            <c:redirect url="Login.jsp"/>
        </c:if>
        <c:set var="us" value="${mrBean.getAccDetails(user,1)}"/>
        <c:set var="lstCategory" value="${mrBean.listCategory}"/>

        <!--MAIN WRAPPER--> 
        <div class="main-wrapper">
            <!-- Mobile Only Navigation - 2 types each for (480px to 640px) and (640px to 960px) wide device screens -->
            <header id="mobile-header" class="clearfix hidden-desktop">
                <div id="nav">
                    <ul>
                        <li><a class="scroll-link" href="#profile" data-soffset="0">My Profile</a></li>
                        <li><a class="scroll-link" href="#news" data-soffset="0">News</a></li>
                        <li><a class="scroll-link" href="#report" data-soffset="0">Report</a></li>
                        <li><a class="scroll-link" href="#complaint" data-soffset="0">Complaint</a></li>
                        <li><a class="scroll-link" href="#faq" data-soffset="0">FAQ</a></li>
                    </ul>
                </div>
            </header>

            <div id="badge">
                <img alt="renova" title="renova" src="images/badge.png"/>
            </div>

            <!-- INTRO SPLASH -->
            <section class="intro master-section">
                <nav id="intro-nav">
                    <ul class="ca-menu">
                        <li>
                            <a class="scroll-link" href="#profile" data-soffset="100">
                                <span class="ca-icon"><img title="renova" src="images/icons/01.png"/></span>
                                <div class="ca-content">
                                    <h2 class="ca-main">My Profile</h2>
                                    <h3 class="ca-sub">Who i am ?</h3>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a class="scroll-link" href="#news" data-soffset="100">
                                <span class="ca-icon"><img title="renova" src="images/icons/06.png"/></span>
                                <div class="ca-content">
                                    <h2 class="ca-main">News</h2>
                                    <h3 class="ca-sub">You may not know</h3>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a class="scroll-link" href="#report" data-soffset="100">
                                <span class="ca-icon"><img title="renova" src="images/icons/04.png"/></span>
                                <div class="ca-content">
                                    <h2 class="ca-main">Report</h2>
                                    <h3 class="ca-sub">Report log</h3>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a class="scroll-link" href="#complaint" data-soffset="100">
                                <span class="ca-icon"><img title="renova" src="images/icons/13.png"/></span>
                                <div class="ca-content">
                                    <h2 class="ca-main">New Complaint</h2>
                                    <h3 class="ca-sub">What's your problem ?</h3>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a class="scroll-link" href="#faq" data-soffset="100">
                                <span class="ca-icon"><img title="renova" src="images/icons/03.png"/></span>
                                <div class="ca-content">
                                    <h2 class="ca-main">FAQ</h2>
                                    <h3 class="ca-sub" style="font-size: 10px;">Frequently Asked Questions</h3>
                                </div>
                            </a>
                        </li>
                    </ul>
                </nav>
                <a class="scroll-link" href="#showcase" data-soffset="100"><div id="scroll"></div></a>
            </section>

            <!-- Desktop Only NAVIGATION -->
            <div class="navigation hidden-phone hidden-tablet">
                <ul id="main-nav">
                    <li>
                        <a class="scroll-link" href="#showcase" id="showcase-linker" data-soffset="100"> </a>
                    </li>
                    <li>
                        <a class="scroll-link" href="#profile" id="profile-linker" data-soffset="100">profile</a>
                    </li>
                    <li>
                        <a class="scroll-link" href="#news" id="newsreel-linker" data-soffset="100">news</a>
                    </li>
                    <li class="logo-wrap">
                        <a class="scroll-link logo" href="#body" data-soffset="100"><img alt="renova" title="renova" src="images/logo.png"/></a>
                    </li>
                    <li>
                        <a class="scroll-link" href="#report" id="report-linker" data-soffset="100">report</a>
                    </li>
                    <li>
                        <a class="scroll-link" href="#complaint" id="complaint-linker" data-soffset="100">complaint</a>
                    </li>
                    <li>
                        <a class="scroll-link" href="#faq" id="services-linker" data-soffset="100">faq</a>
                    </li>
                </ul>
            </div>

            <!-- SHOWCASE BLOCK -->
            <section id="showcase" class="clearfix master-section">	
                <div class="wrapper">
                    <div id="container-folio" class="scroll-content beneath-intro">	

                    </div><!-- CONTAINER FOLIO-->
                </div><!-- WRAPPER -->
            </section><!-- CONTENT-->






            <!--/ PROFILE -->
            <section id="profile" class="master-section">
                <section class="container-fluid inner mob-bg-remove">
                    <div class="row-fluid">
                        <section class="container">
                            <div class="row add-top-main">
                                <article class="span12">
                                    <div class="thumb-icon"><img alt="renova" title="renova" src="images/icons/01.png"/></div>
                                    <h1 class="main-heading"><span>My Profile</span></h1>
                                    <h3 class="promo-text"><span>Who i am ?</span></h3>
                                </article>
                            </div>
                        </section><!--/ container-->        
                    </div><!--/ row-fluid-->   
                </section><!--/ container-->
            </section><!--/ page-->

            <section id="profile-end">
                <section class="container-fluid inner mob-bg-remove">
                    <div class="row-fluid">
                        <section class="container">
                            <div class="row">
                                <article class="span6 offset3 testimonial-block">
                                    <div class="row-fluid">

                                        <article class="span6 offset3">
                                            <img alt="renova" title="renova" src="${us.imageurl}"/>
                                        </article>
                                        <article class="span10 remove-left testimonial-content text-left" style="padding-left: 80px ; width: auto;">

                                            <p class="tes-text">Username:<span class="tes-client">${user}</span></p>
                                            <p class="tes-text">Fullname:<span class="tes-client">${us.fullname}</span></p>
                                            <p class="tes-text">Department:<span class="tes-client">${us.departmentid}</span></p>
                                            <p class="tes-text">Email:<span class="tes-client">${us.email}</span></p>
                                            <p class="tes-text">Phone number:<span class="tes-client">${us.phone}</span></p>
                                            <p class="tes-text">Address:<span class="tes-client">${us.address}</span></p><br/>
                                            <!--<h3 class="tes-client">Anne Rockland,<br/><span>Something LLC.</span></h3>-->
                                        </article>
                                    </div>
                                </article>
                            </div>
                        </section><!--/ container-->        
                    </div><!--/ row-fluid-->   
                </section><!--/ container-->
            </section><!--/ page-->

            <!-- SHOWCASE BLOCK -->
            <section id="showcase" class="clearfix master-section">	
                <div class="wrapper">
                    <div id="container-folio" class="scroll-content beneath-intro">	

                    </div><!-- CONTAINER FOLIO-->
                </div><!-- WRAPPER -->
            </section><!-- CONTENT-->
            <!--/ PROFILE END -->





            <!--/ NEWS -->
            <section id="news" class="bg-dark master-section">
                <section class="container-fluid inner mob-bg-remove">
                    <div class="row-fluid">
                        <section class="container">
                            <div class="row add-top-main">
                                <article class="span12">
                                    <div class="thumb-icon"><img src="images/icons/06.png"/></div>
                                    <h1 class="main-heading"><span><a href="NewsPage.jsp">News</a></span></h1>
                                    <h3 class="promo-text"><span>You may not know</span></h3>
                                </article>
                            </div>
                            <div class="row">
                                <article class="span6 news-block">
                                    <div class="row-fluid">
                                        <article class="span12 news-img">
                                            <div class="news-date">
                                                <h2>21</h2>
                                                <h5>June</h5>
                                                <h4>2013</h4>
                                            </div>
                                            <img src="images/news/1.jpg"/>
                                        </article>
                                    </div>
                                    <div>
                                        <div class="row-fluid">
                                            <article class="span12 news-specs">
                                                <nav>
                                                    <a href="#"><img src="images/news/icons/05.png"/></a>
                                                    <a href="#"><img src="images/news/icons/05.png"/></a>
                                                    <a href="#"><img src="images/news/icons/05.png"/></a>
                                                    <a href="#"><img src="images/news/icons/04.png"/></a>
                                                    <a href="#"><img src="images/news/icons/04.png"/></a>
                                                </nav>
                                            </article>
                                        </div>
                                    </div>
                                    <div class="row-fluid">
                                        <article class="span12 news-block-content">
                                            <h3 class="news-heading"><span>News Title Here..</span></h3>
                                            <p>Lorem ipsum dolor sit amet, consectetur.. Sed id lorem eget orci dictum facilisis vel id tellus. Nullam iaculis arcu at mauris dapibus consectetur.</p>
                                            <a href="#" class="btn btn-renova-alt">Read More</a>
                                        </article>
                                    </div>
                                </article>
                                <article class="span6 news-block">
                                    <div class="row-fluid">
                                        <article class="span12 news-img">
                                            <div class="news-date">
                                                <h2>21</h2>
                                                <h5>June</h5>
                                                <h4>2013</h4>
                                            </div>
                                            <img src="images/news/2.jpg"/>
                                        </article>
                                    </div>
                                    <div>
                                        <div class="row-fluid">
                                            <article class="span12 news-specs">
                                                <nav>
                                                    <a href="#"><img src="images/news/icons/05.png"/></a>
                                                    <a href="#"><img src="images/news/icons/05.png"/></a>
                                                    <a href="#"><img src="images/news/icons/05.png"/></a>
                                                    <a href="#"><img src="images/news/icons/05.png"/></a>
                                                    <a href="#"><img src="images/news/icons/04.png"/></a>
                                                </nav>
                                            </article>
                                        </div>
                                    </div>
                                    <div class="row-fluid">
                                        <article class="span12 news-block-content">
                                            <h3 class="news-heading"><span>News Title Here..</span></h3>
                                            <p>Lorem ipsum dolor sit amet, consectetur.. Sed id lorem eget orci dictum facilisis vel id tellus. Nullam iaculis arcu at mauris dapibus consectetur.</p>
                                            <a href="#" class="btn btn-renova-alt">Read More</a>
                                        </article>
                                    </div>
                                </article>
                            </div>
                            <div class="row add-top-news add-bottom-main">
                                <article class="span4 news-block">
                                    <div class="row-fluid">
                                        <article class="span12 news-img">
                                            <img src="images/news/1.jpg"/>
                                        </article>
                                    </div>
                                    <div>
                                        <div class="row-fluid">
                                            <article class="span12 news-specs">
                                                <nav>
                                                    <a href="#"><img src="images/news/icons/05.png"/></a>
                                                    <a href="#"><img src="images/news/icons/05.png"/></a>
                                                    <a href="#"><img src="images/news/icons/05.png"/></a>
                                                </nav>
                                            </article>
                                        </div>
                                    </div>
                                    <div class="row-fluid">
                                        <article class="span12 news-block-content">
                                            <h3 class="news-heading"><span>News Title Here..</span></h3>
                                            <p>Lorem ipsum dolor sit amet, consectetur.. Sed id lorem eget orci dictum facilisis vel id tellus. Nullam iaculis arcu at mauris dapibus consectetur.</p>
                                            <a href="#" class="btn btn-renova-alt">Read More</a>
                                        </article>
                                    </div>
                                </article>
                                <article class="span4 news-block">
                                    <div class="row-fluid">
                                        <article class="span12 news-img">
                                            <img src="images/news/1.jpg"/>
                                        </article>
                                    </div>
                                    <div>
                                        <div class="row-fluid">
                                            <article class="span12 news-specs">
                                                <nav>
                                                    <a href="#"><img src="images/news/icons/05.png"/></a>
                                                    <a href="#"><img src="images/news/icons/05.png"/></a>
                                                    <a href="#"><img src="images/news/icons/05.png"/></a>
                                                    <a href="#"><img src="images/news/icons/05.png"/></a>
                                                </nav>
                                            </article>
                                        </div>
                                    </div>
                                    <div class="row-fluid">
                                        <article class="span12 news-block-content">
                                            <h3 class="news-heading"><span>News Title Here..</span></h3>
                                            <p>Lorem ipsum dolor sit amet, consectetur.. Sed id lorem eget orci dictum facilisis vel id tellus. Nullam iaculis arcu at mauris dapibus consectetur.</p>
                                            <a href="#" class="btn btn-renova-alt">Read More</a>
                                        </article>
                                    </div>
                                </article>
                                <article class="span4 news-block">
                                    <div class="row-fluid">
                                        <article class="span12 news-img">
                                            <img src="images/news/1.jpg"/>
                                        </article>
                                    </div>
                                    <div>
                                        <div class="row-fluid">
                                            <article class="span12 news-specs">
                                                <nav>
                                                    <a href="#"><img src="images/news/icons/05.png"/></a>
                                                    <a href="#"><img src="images/news/icons/05.png"/></a>
                                                </nav>
                                            </article>
                                        </div>
                                    </div>
                                    <div class="row-fluid">
                                        <article class="span12 news-block-content">
                                            <h3 class="news-heading"><span>News Title Here..</span></h3>
                                            <p>Lorem ipsum dolor sit amet, consectetur.. Sed id lorem eget orci dictum facilisis vel id tellus. Nullam iaculis arcu at mauris dapibus consectetur.</p>
                                            <a href="#" class="btn btn-renova-alt">Read More</a>
                                        </article>
                                    </div>
                                </article>
                            </div>
                            <div class="row add-top-news add-bottom-main">
                                <article class="span12">
                                    <div class="thumb-icon"><a href="NewsPage.jsp" class="btn btn-renova-alt">More News</a></div>
                                    </br></br></br>                                    
                                </article>
                            </div>
                        </section><!--/ container-->        
                    </div><!--/ row-fluid-->   
                </section><!--/ container-->
            </section><!--/ page-->
            <!--/ NEWS END -->





            <!--/ REPORT -->
            <section id="report" class="bg-dark master-section">
                <section class="container-fluid inner mob-bg-remove">
                    <div class="row-fluid add-bottom-main">
                        <section class="container">
                            <div class="row add-top-main">
                                <article class="span12">
                                    <div class="thumb-icon"><img alt="renova" title="renova" src="images/icons/04-in.png"/></div>
                                    <h1 class="main-heading"><span>Report</span></h1>
                                    <h3 class="promo-text-alt darken"><span>Report log</span></h3>
                                </article>
                            </div>
                            <div class="row">
                                <article class="span12">
                                    <section id="options" class="clearfix">
                                        <table style="border: solid; border-color: white">
                                            <tr>
                                                <td class="inner-link textReport">demo</td>
                                                <td class="inner-link textReport">demo</td>
                                                <td class="inner-link textReport">demo</td>
                                                <td class="inner-link textReport">demo</td>
                                                <td class="inner-link textReport">demo</td>
                                                <td class="inner-link textReport">demo</td>
                                            </tr>
                                            <tr>
                                                <td class="inner-link textReport2">demo 1</td>
                                                <td class="inner-link textReport2">demo 1</td>
                                                <td class="inner-link textReport2">demo 1</td>
                                                <td class="inner-link textReport2">demo 1</td>
                                                <td class="inner-link textReport2">demo 1</td>
                                                <td class="inner-link textReport2">demo 1</td>
                                            </tr>
                                            <tr>
                                                <td class="inner-link textReport2">demo 2</td>
                                                <td class="inner-link textReport2">demo 2</td>
                                                <td class="inner-link textReport2">demo 2</td>
                                                <td class="inner-link textReport2">demo 2</td>
                                                <td class="inner-link textReport2">demo 2</td>
                                                <td class="inner-link textReport2">demo 2</td>
                                            </tr>
                                            <tr>
                                                <td class="inner-link textReport2">demo 3</td>
                                                <td class="inner-link textReport2">demo 3</td>
                                                <td class="inner-link textReport2">demo 3</td>
                                                <td class="inner-link textReport2">demo 3</td>
                                                <td class="inner-link textReport2">demo 3</td>
                                                <td class="inner-link textReport2">demo 3</td>
                                            </tr>
                                        </table>
                                    </section> <!-- #options -->
                                </article><!-- span12 : ends -->
                            </div><!-- row : ends -->

                            <div class="row">
                                <article class="span12">
                                    <div id="container" class="clearfix portfolio"></div> <!-- #container -->
                                </article><!-- span12 : ends -->
                            </div><!-- row : ends -->
                        </section><!--/ container-->        
                    </div><!--/ row-fluid--> 
                </section>
            </section><!--/ page-->
            <!--/ REPORT END -->



            <!--/ NEW COMPLAINT -->
            <section id="complaint" class="bg-dark master-section">
                <section class="container-fluid inner mob-bg-remove">
                    <div class="row-fluid">
                        <section class="container">
                            <div class="row add-top-main">
                                <article class="span12">
                                    <div class="thumb-icon"><img alt="renova" title="renova" src="images/icons/13.png"/></div>
                                    <h1 class="main-heading"><span>New Complaint</span></h1>
                                    <h3 class="promo-text"><span>What's your problem ?</span></h3>
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
                                <form name="myform" id="contactForm" action="sendQueryAction" method="post">
                                    <div class="span6 offset3" style="margin-bottom: 35px">
                                        <span style="text-transform: uppercase; font-family:Open_Sans_L">Please choose complaint category: </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <select style="width: 169px" name="category">
                                            <c:forEach items="${lstCategory}" var="c">
                                                <option value="${c.id}">${c.name}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                    <article class="span6 offset3">
                                        <input type="hidden" name="username" value="${user}"/>
                                        <input size="100" type="text" name="subject" id="name" placeholder="Subject">
                                        <textarea  id="msg" rows="3" cols="40" name="content" placeholder="Message"></textarea>
                                        <button type="submit" name="submit" id="submit" class="btn btn-renova-alt add-top-half">Send Message</button>
                                    </article>
                                </form>
                            </div>

                        </section><!--/ container-->        
                    </div><!--/ row-fluid-->   
                </section><!--/ container-->
            </section><!--/ page-->
            <!--/ NEW COMPLAINT END -->



            <!--/ FAQ -->
            <section id="faq" class="bg-dark master-section">
                <section class="container-fluid inner mob-bg-remove">
                    <div class="row-fluid">
                        <section class="container">
                            <div class="row add-top-main">
                                <article class="span12">
                                    <div class="thumb-icon"><img alt="renova" title="renova" src="images/icons/03-in.png"/></div>
                                    <h1 class="main-heading"><span>FAQ</span></h1>
                                    <h3 class="promo-text-alt darken"><span>Frequently Asked Questions</span></h3>
                                </article>
                            </div>

                        </section>
                    </div>


                </section>
            </section>
            <!--/ FAQ END -->





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