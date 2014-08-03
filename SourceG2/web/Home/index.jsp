<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="mrBean" scope="session" class="DataAccess.DBFunction"/>
<jsp:useBean id="newsBean" scope="session" class="DataAccess.DBFunctionNews"/>
<jsp:useBean id="autoBean" scope="session" class="DataAccess.AutoGenerate"/>

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">

    <head>

        <title>G2 Helpdesk</title>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">


    </head>
    <body>
        <c:set var="user" value="${sessionScope.user}"/>
        <c:if test="${user==null}">
            <c:redirect url="../login.html"/>
        </c:if>
        <c:set var="us" value="${mrBean.getAccDetails(user,1)}"/>
        <c:set var="lstCategory" value="${mrBean.listCategory}"/>
        <c:set var="lstQuery" value="${mrBean.getListQuery(user)}"/>


        <c:forEach var="n" items="${newsBean.getNews('All','')}">
            <div id="news${n.id}" class="popup">
                <div class="popup-body"><span class="popup-exit"></span>

                    <div class="popup-content">
                        <h2 class="popup-title">G2 News</h2>
                        <br/>

                        <img src="images/news/${n.thumbnail}" alt="image" style="width:200px; height:120px; float:left; margin:10px;"/>
                        <h3 style="font-size: x-large; font-weight: bolder;">${n.title}</h3>
                        <br/>
                        ${n.content}
                    </div>
                </div>
            </div>

        </c:forEach>
        <c:forEach items="${lstQuery}" var="query">
            <c:set var="stid" scope="session" value="${newsBean.convertToString(query.id)}"/>
            <div  class="popup" id="${stid}" style="width:60%; height:500px; margin-left:0%; margin-top:0px;">
                <div class="popup-body"><span class="popup-exit"></span>

                    <div class="popup-content" style="border-bottom:1px #cccccc dashed; border-left:1px #cccccc dashed;; border-right: 1px #cccccc dashed; padding-bottom:20px;">
                        <h2 class="popup-title">G2 My Complaint</h2>
                        <div class="timeline-seperator text-center"> <span style="font-size: x-large;">${query.subject}</span>

                        </div>
                        <br/>
                        <div class="chat-body no-padding profile-message">
                            <ul>
                                <li class="message" style="text-align: left;">
                                    <img src="${us.imageurl}" class="online" alt="sunny" style="width:55px; height:60px;"/>
                                    <span class="message-text">


                                        <span style="font-size: large; font-weight: bolder; text-align:left; margin-right:10px;" >
                                            &nbsp; ${query.content}
                                        </span>
                                    </span>

                                </li>
                                <br/>
                                <br/>

                                <li class="message message-reply" style="float: left;">
                                    <img src="images/Account/photo.jpg" class="online" alt="user"/>
                                    <span class="message-text"> <a href="javascript:void(0);" class="username">Serman Syla</a> Haha! Yeah I know what you mean. Thanks for the file Sadi! <i class="fa fa-smile-o txt-color-orange"></i> </span>

                                    <ul class="list-inline font-xs">
                                        <li>
                                            <a href="javascript:void(0);" class="text-muted">1 minute ago </a>
                                        </li>

                                    </ul>

                                </li>
                                <li class="message message-reply" style="float: left;">
                                    <img src="images/Account/photo.jpg" class="online" alt="user" />
                                    <span class="message-text"> <a href="javascript:void(0);" class="username">Sadi Orlaf </a> Haha! Yeah I know what you mean. Thanks for the file Sadi! <i class="fa fa-smile-o txt-color-orange"></i> </span>

                                    <ul class="list-inline font-xs">
                                        <li>
                                            <a href="javascript:void(0);" class="text-muted">a moment ago </a>
                                        </li>

                                    </ul>
                                    <br/>

                                    <textarea name="content" cols="88" rows="6" class="textarea" style="font-size:large"></textarea>
                                </li>
                            </ul>

                        </div>

                    </div>
                </div>
            </div>
        </c:forEach>
        <!-- Container -->
        <div id="container">

            <!-- Top -->
            <div class="top"> 
                <!-- Logo -->
                <div id="logo">
                    <h2 class="fword">G2 HELPDESK</h2>
                    <h4>A product of FPT international school</h4>
                </div>
                <!-- /Logo -->

                <!-- Social Icons -->
                <ul class="socialicons">
                    <li><a href="#" class="social-text">${us.fullname}</a></li>

                    <li><a href="#" class="social-facebook"></a></li>
                    <li><a href="#" class="social-twitter"></a></li>
                    <li><a href="#" class="social-in"></a></li>
                    <li><a href="#" class="social-googleplus"></a></li>
                    <li><a href="#" class="social-text">LOG OUT</a></li>
                </ul>
                <!-- /Social Icons -->
            </div>
            <!-- /Top -->

            <!-- Content -->
            <div id="content" >

                <!-- Profile -->
                <div id="profile"> 
                    <!-- About section -->
                    <div class="about">
                        <div class="photo-inner"><img src="${us.imageurl}" height="186" width="153" /></div>
                        <h1 style="text-transform: uppercase; font-size: x-large;">${us.fullname}</h1>

                        <p>${us.departmentid}</p>
                    </div>
                    <!-- /About section -->

                    <!-- Personal info section -->
                    <ul class="personal-info">
                        <li><label>Name</label><span>${us.fullname}</span></li>
                        <li><label>ID</label><span>${us.username}</span></li>
                        <li><label>Address</label><span>${us.address}</span></li>
                        <li><label>Email</label><span>${us.email}</span></li>
                        <li><label>Phone</label><span>${us.phone}</span></li>

                    </ul>
                    <!-- /Personal info section -->
                </div>        
                <!-- /Profile --> 

                <!-- Menu -->
                <div class="menu">
                    <ul class="tabs">
                        <li><a href="#resume" class="tab-resume">News</a></li>
                        <li><a href="#profile" class="tab-profile">Profile</a></li>   
                        <li><a href="#contact" class="tab-contact">Complaint</a></li>
                        <li><a href="#portfolio" class="tab-portfolio">FAQ ?!</a></li>
                    </ul>
                </div>
                <!-- /Menu --> 

                <!-- Resume -->
                <div id="resume" style="background-color: #fff">

                    <div class="timeline-section" id="datht">

                        <h1 class="fword" style="font-weight: bolder">G2 NEWS</h1>
                        <br/>
                        <!-- Timeline for Employment  -->   
                        <div class="container_12 mobile-hide">
                            <div class="grid_1">
                                <h4 class="fword" style="font-weight:bolder; font-size: larger;">Hot News</h4>
                            </div>
                            <div class="grid_7">
                                <div class="newsticker">
                                    <ul class="slides">
                                        <c:forEach begin="0" end="4" var="n" items="${newsBean.getNews('Top5','')}">
                                            <li><h2><a href="#">${n.title.substring(0,34)}..</a></h2></li>
                                                    </c:forEach>
                                    </ul>
                                </div>
                            </div>
                            <div class="grid_3 text-right">
                                <div id="Date" class="mobile-hide"></div>

                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <section id="maincontent">

                            <!-- POST GRID -->
                            <div class="container_12">

                                <div class="grid_8">
                                    <div class="bigslide flexslider">
                                        <div class="overlay"></div>
                                        <ul class="slides">
                                            <c:forEach begin="0" end="1" var="n" items="${newsBean.getNews('Top5','')}">
                                                <li>
                                                    <img src="images/news/${n.thumbnail}" alt="image"/>
                                                    <div class="capcontain">

                                                        <div class="slidetitle">
                                                            <h3 style="font-size: x-large;" class="slidecom">${n.title}</h3>
                                                            <a href="#" class="slidecat">${n.cDate}</a>
                                                            <button id="popup_window" data-popup-target="#news${n.id}">Read more</button>
                                                        </div>
                                                    </div>


                                                </li>
                                            </c:forEach>

                                        </ul>
                                    </div>
                                    <div class="clearfix"></div> <!-- END SLIDER -->

                                    <div class="textdev"><h3 class="fword">MOST FAVORITE</h3><div></div></div>
                                    <div class="clearfix"></div>

                                    <!-- Carousel Post -->
                                    <div class="loopCarousel">
                                        <ul class="slides">
                                            <li>
                                                <c:forEach begin="2" end="5" var="n" items="${newsBean.getNews('All','')}">
                                                    <div class="grid_4 alpha">
                                                        <article class="gridpost ajaxloop">
                                                            <header>
                                                                <div class="posthumb">
                                                                    <img src="images/news/${n.thumbnail}" alt="image"/>
                                                                    <button  id="popup_window" data-popup-target="#news${n.id}" class="rdmore" title="Read More"><i class="icon-plus-sign"></i></button>
                                                                </div>
                                                                <h2><a href="#">${n.title.substring(0,30)}..</a></h2>
                                                            </header>
                                                            <div class="clearfix"></div>
                                                            <ul class="inline-list">
                                                                <li><i class="icon-time"></i> <a href="#"> <small>${n.cDate}</small></a></li>

                                                            </ul>
                                                        </article>
                                                    </div>
                                                </c:forEach>

                                            </li>
                                            <li>
                                                <c:forEach begin="0" end="2" var="n" items="${newsBean.getNews('All','')}">
                                                    <div class="grid_4 alpha">
                                                        <article class="gridpost ajaxloop">
                                                            <header>
                                                                <div class="posthumb">
                                                                    <img src="images/news/${n.thumbnail}" alt="image"/>
                                                                    <button  id="popup_window" data-popup-target="#news${n.id}" class="rdmore" title="Read More"><i class="icon-plus-sign"></i></button>
                                                                </div>
                                                                <h2><a href="#">${n.title.substring(0,30)}..</a></h2>
                                                            </header>
                                                            <div class="clearfix"></div>
                                                            <ul class="inline-list">
                                                                <li><i class="icon-time"></i> <a href="#"> <small>${n.cDate}</small></a></li>

                                                            </ul>
                                                        </article>
                                                    </div>
                                                </c:forEach>

                                            </li>
                                        </ul>
                                    </div>

                                    <div class="clearfix"></div><!-- END CAROUSEL -->


                                    <!-- BLOG -->
                                    <div class="textdev"><h3 class="fword">LATEST ENTRIES</h3><div></div></div>
                                    <div class="clearfix"></div>
                                    <!-- START BLOG, BITCH -->
                                    <c:forEach var="n" step="2" items="${newsBean.getNews('All','')}">
                                        <article>
                                            <div class="postloopBig">
                                                <div class="loopBigThumb">
                                                    <img src="images/news/${n.thumbnail}" alt="image"/>
                                                </div>
                                                <c:set var="u" scope="session" value="${newsBean.getAccDetails(n.username,0)}"/>
                                                <div class="loopBigAuthor">
                                                    <div class="profile circle">
                                                        <img src="${u.imageurl}" alt="image" class="circle"/>
                                                    </div>
                                                    <div class="bywho">
                                                        <p>by <a href="#">${u.fullname}</a></p>
                                                    </div>
                                                </div>
                                                <div class="loopBigIsi">
                                                    <header>
                                                        <h2><a href="#">${n.title}</a></h2>
                                                        <ul class="loopBigMeta inline-list">
                                                            <li><a href="#"><i class="icon-bookmark-empty"></i> Latest News</a></li>
                                                            <li><a href="#"><i class="icon-calendar-empty"></i>${n.cDate}</a></li>
                                                        </ul>
                                                    </header>
                                                    <div class="content-entry">
                                                        <c:if test="${n.summary.length()>150}">
                                                            <p>${n.summary.substring(0,150)}</p>
                                                        </c:if>
                                                        <c:if test="${n.summary.length()<=150}">
                                                            <p>${n.summary}</p>
                                                        </c:if>
                                                    </div>
                                                    <footer>
                                                        <button  id="popup_window" data-popup-target="#news${n.id}"><h4>Read More</h4></button>
                                                        <div class="circle rborder">
                                                            <i class="icon-arrow-right"></i>
                                                        </div>
                                                    </footer>
                                                </div>
                                            </div>
                                        </article>
                                    </c:forEach>


                                    <div class="clearfix"></div>

                                    <!-- Pagination -->
                                    <ul class="pagination">
                                        <li><a href="#">1</a></li>
                                        <li><a href="#">2</a></li>
                                        <li><a href="#">3</a></li>
                                        <li><a href="#">4</a></li>
                                        <li><a href="#">5</a></li>
                                        <li><a href="#">...</a></li>
                                        <li><a href="#">&rsaquo;</a></li>
                                        <li><a href="#">&raquo;</a></li>
                                    </ul>
                                    <!-- END BLOG, YEAH -->
                                    <div class="clearfix"></div>
                                    <br/>



                                </div><!-- END GRID 8 -->

                                <!-- SIDEBAR -->

                                <div class="clearfix"></div>
                            </div>
                            <div class="clearfix"></div>
                        </section>



                        <!-- /Timeline for Education  -->              
                    </div>

                    <div class="skills-section">
                        <h1 style="font-weight: bolder">TOP 3</h1>
                        <c:forEach begin="2" end="5" var="n" items="${newsBean.newsTop5}">
                            <!-- Skills -->
                            <h3 class="main-heading">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a class="links">${n.cDate}</a><span>${n.title}</span></h3> 
                            <ul class="skills">
                                <li>
                                    <img style="width: 260px;height:130px;" src="images/news/${n.thumbnail}"/>
                                    <h4>${n.summary}</h4>
                                </li>

                                <li>
                                    <button  id="popup_window" data-popup-target="#news${n.id}"><h4>Read More</h4></button>

                                </li>

                            </ul>
                        </c:forEach>

                        <!-- /Skills -->
                    </div>
                </div>
                <!-- /Resume --> 

                <!-- Portfolio -->

                <div id="contact">
                    <ul id="portfolio-filter">
                        &nbsp;  &nbsp;  &nbsp;  &nbsp; <li><a href="" class="current" data-filter=".mail-env">All</a></li>
                        <li><a href="" data-filter=".newcomplaint">New Complaint</a></li>

                    </ul>


                    <div id="portfolio-list">
                        <div class="mail-env" style="width:100%; height:800px; padding:0px;">

                            <!-- Mail Body -->
                            <div class="mail-body"  style="width:100%; height:800px ; margin-top:0px;"   >




                                <!-- mail table -->
                                <table id="dattable" class="mail-table dataTable sortable" style="margin-bottom: 0px; border-bottom: 1px #666666 solid;">
                                    <!-- mail table header -->
                                    <thead>
                                        <tr>
                                            <th style="height:30px;">
                                                Date
                                            </th>
                                            <th>
                                                Category
                                            </th>
                                            <th>
                                                Subject
                                            </th>
                                            <th>
                                                Status
                                            </th>
                                            <th>

                                            </th>

                                        </tr>
                                    </thead>

                                    <!-- email list -->
                                    <tbody id="result">



                                        <c:forEach items="${lstQuery}" var="query">

                                            <tr class="read"><!-- new email class: unread -->

                                                <td class="col-time">

                                                    <a href="../neon-x/mailbox/message/index.html" class="col-time">${query.dateOfLodging}</a>
                                                </td>
                                                <td class="col-subject">
                                                    <a href="../neon-x/mailbox/message/index.html" style="margin-left:40px; text-align: center;">
                                                        ${query.category}
                                                    </a>

                                                </td>
                                                <c:set var="siz" value="${mrBean.getListReply(query.id).size()}"/>
                                                <c:if test="${siz>0}">
                                                    <td class="col-name" style="text-align: left;">
                                                        <a href="../neon-x/mailbox/message/index.html"><i class="col-name">&nbsp; &nbsp; &nbsp;${query.subject}(${siz})</i></a>
                                                    </td>
                                                </c:if>
                                                <c:if test="${siz==0}">
                                                    <td class="col-name" style="text-align: left;">
                                                        <a href="../neon-x/mailbox/message/index.html"><i class="col-name">&nbsp; &nbsp; &nbsp;${query.subject}</i></a>
                                                    </td>
                                                </c:if>

                                                <td class="col-name col-options">

                                                    <c:if test="${query.status=='Pending'}">
                                                        <span class="badge badge-warning">${query.status}</span>
                                                    </c:if>
                                                    <c:if test="${query.status=='Processing'}">
                                                        <span class="badge badge-info">${query.status}</span>
                                                    </c:if>
                                                    <c:if test="${query.status=='Resolved'}">
                                                        <span class="badge badge-success">${query.status}</span>
                                                    </c:if>
                                                    <c:if test="${query.status=='NOT Resolved'}">
                                                        <span class="badge badge-danger">${query.status}</span>
                                                    </c:if>
                                                    <c:if test="${query.status=='Cancel'}">
                                                        <span class="badge badge-gray">${query.status}</span>
                                                    </c:if>

                                                </td>
                                                <td>
                                                    <button style="margin-left:auto; margin-right:auto;" id="popup_window" data-popup-target="#${stid}">View</button>
                                                </td>
                                            </tr>

                                        </c:forEach>


                                    </tbody>

                                    <!-- mail table footer -->



                                </table>

                            </div>

                            <!-- Sidebar -->


                        </div>
                        <div class="newcomplaint visibledatht" style="position:relative;">
                            <!-- Contact Info -->
                            <div class="contact-info">
                                <h3 class="main-heading"><span>Requirement</span></h3>
                                <ul>
                                    <li>Subject less than 50 character</li>
                                    <li>Subject required</li>
                                    <li> Complaint Message required</li>
                                    <li>Only send 5 complaint in a week</li>
                                    <li>________________________</li>
                                    <li style="font-weight: bolder;">G2 Mantech Helpdesk</li>
                                </ul>
                            </div>
                            <!-- /Contact Info -->

                            <!-- Contact Form -->
                            <div class="contact-form" id="complaint-write" >
                                <h3 class="main-heading"><span>Send a complaint to Technician</span></h3>
                                <div id="contact-status"></div>
                                <form action="../sendQueryAction" method="POST">
                                    <input type="hidden" name="username" value="${user}"/>
                                    <p>
                                        <label for="subject">Subject</label>
                                        <input type="text" name="subject" class="input"  maxlength="50"/>
                                    </p>
                                    <br/>
                                    <p>
                                        <label for="content">Category</label>
                                        <select style="width: 150px" name="category" class="dropdown-menu">
                                            <c:forEach items="${lstCategory}" var="c">
                                                <option value="${c.id}" class="field-options">${c.name}</option>
                                            </c:forEach>
                                        </select>
                                    </p>
                                    <br/>
                                    <p>
                                        <label for="message">Complaint Message</label>
                                        <textarea name="content" cols="88" rows="6" class="textarea"></textarea>
                                    </p>
                                    <br/>
                                    <input type="submit" value="Send Complaint " targets="result" class="submit"/>
                                    <br/><br/>  <br/>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /Portfolio -->   

                <!-- Contact -->
                <div id="portfolio">


                    <!-- /Contact Form -->
                </div>
                <!-- /contact -->  

            </div>
            <!-- /Content -->

            <!-- Footer -->
            <div class="footer">
                <div class="copyright">Copyright © 2014 G2 FPT International School</div>
            </div>
            <!-- /Footer --> 

        </div>
        <!-- /Container -->
        <link href="css/jquery.dataTables.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Open+Sans:400,600,300,800,700,400italic|PT+Serif:400,400italic"/>

        <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/news/style.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" type="text/css" href="css/fancybox.css"/>
        <link rel="stylesheet" type="text/css" href="css/style.css"/>
        <link rel="stylesheet" type="text/css" href="css/reset.css"/> 
        <link id="switchyuk" rel="stylesheet" type="text/css" href="css/schemes/orange.css" />     
        <script type="text/javascript" src="js/jquery.min.js"></script>
        <script src="js/jquery.dataTables.min.js" type="text/javascript"></script>
        <script src="js/dataTables.bootstrap.js" type="text/javascript"></script>   
        <script type="text/javascript" src="js/jquery.easytabs.min.js"></script>    
        <script type="text/javascript" src="js/jquery.adipoli.min.js"></script>
        <script type="text/javascript" src="js/jquery.isotope.min.js"></script>
        <script type="text/javascript" src="js/custom_1.js"></script>
        <script type="text/javascript" src="js/jquery.cookie.js"></script>
        <script type="text/javascript" src="js/custom.js"></script>
        <script type="text/javascript" src="js/plugin.js"></script>
        <script type="text/javascript" src="js/themeswitch.js"></script>
        <script type="text/javascript" src="js/jquery.fancybox-1.3.4.pack.js"></script>
        <script type="text/javascript">
            $(window).load(function() {

                jQuery(document).ready(function($) {

                    $('[data-popup-target]').click(function() {
                        $('#resume').addClass('overlay');
                        var activePopup = $(this).attr('data-popup-target');
                        $(activePopup).addClass('visible');

                    });

                    $(document).keyup(function(e) {
                        if (e.keyCode == 27 && $('body').hasClass('overlay')) {
                            clearPopup();
                        }
                    });

                    $('.popup-exit').click(function() {
                        clearPopup();

                    });

                    $('.popup-overlay').click(function() {
                        clearPopup();
                    });

                    function clearPopup() {
                        $('.popup.visible').addClass('transitioning').removeClass('visible');
                        $('#resume').removeClass('overlay');

                        setTimeout(function() {
                            $('.popup').removeClass('transitioning');
                        }, 200);
                    }


                });
                var tabdat = $('#dattable').dataTable({
                    "order": [[0, "desc"]],
                    "aLengthMenu": [[5,7,10,20], [5,7,10,20]],
                    "iDisplayLength": 7
                });

            });

        </script>






    </body>
</html>