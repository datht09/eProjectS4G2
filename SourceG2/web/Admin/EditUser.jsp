<%-- 
    Document   : index
    Created on : Jul 21, 2014, 3:22:19 PM
    Author     : Think Different
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="adBean1" scope="session" class="DataAccess.Admin"/>
<jsp:useBean id="autoBean" scope="session" class="DataAccess.AutoGenerate"/>

<!DOCTYPE html>
<html lang="en">
    <head>
        <!--
                Charisma v1.0.0

                Copyright 2012 Muhammad Usman
                Licensed under the Apache License v2.0
                http://www.apache.org/licenses/LICENSE-2.0

                http://usman.it
                http://twitter.com/halalit_usman
        -->
        <meta charset="utf-8">
        <title>G2 Admin</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="Charisma, a fully featured, responsive, HTML5, Bootstrap admin template.">
        <meta name="author" content="Muhammad Usman">

        <!-- The styles -->
        <link id="bs-css" href="css/bootstrap-cerulean.css" rel="stylesheet">
        <style type="text/css">
            body {
                padding-bottom: 40px;
            }
            .sidebar-nav {
                padding: 9px 0;
            }
        </style>
        <link href="css/bootstrap-responsive.css" rel="stylesheet">
        <link href="css/charisma-app.css" rel="stylesheet">
        <link href="css/jquery-ui-1.8.21.custom.css" rel="stylesheet">
        <link href='css/fullcalendar.css' rel='stylesheet'>
        <link href='css/fullcalendar.print.css' rel='stylesheet'  media='print'>
        <link href='css/chosen.css' rel='stylesheet'>
        <link href='css/uniform.default.css' rel='stylesheet'>
        <link href='css/colorbox.css' rel='stylesheet'>
        <link href='css/jquery.cleditor.css' rel='stylesheet'>
        <link href='css/jquery.noty.css' rel='stylesheet'>
        <link href='css/noty_theme_default.css' rel='stylesheet'>
        <link href='css/elfinder.min.css' rel='stylesheet'>
        <link href='css/elfinder.theme.css' rel='stylesheet'>
        <link href='css/jquery.iphone.toggle.css' rel='stylesheet'>
        <link href='css/opa-icons.css' rel='stylesheet'>
        <link href='css/uploadify.css' rel='stylesheet'>

        <!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
          <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->

        <!-- The fav icon -->
        <link rel="shortcut icon" href="img/favicon.ico">

    </head>

    <body>

        <!-- topbar starts -->
        <div class="navbar">
            <div class="navbar-inner">
                <div class="container-fluid">
                    <a class="btn btn-navbar" data-toggle="collapse" data-target=".top-nav.nav-collapse,.sidebar-nav.nav-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </a>
                    <a class="brand" href="index.jsp"> <img alt="G2 Logo" src="img/logo20.png" /> <span>G2 Admin</span></a>

                    <!-- theme selector starts -->
                    <div class="btn-group pull-right theme-container" >
                        <a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
                            <i class="icon-tint"></i><span class="hidden-phone"> Change Theme / Skin</span>
                            <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu" id="themes">
                            <li><a data-value="classic" href="#"><i class="icon-blank"></i> Classic</a></li>
                            <li><a data-value="cerulean" href="#"><i class="icon-blank"></i> Cerulean</a></li>
                            <li><a data-value="cyborg" href="#"><i class="icon-blank"></i> Cyborg</a></li>
                            <li><a data-value="redy" href="#"><i class="icon-blank"></i> Redy</a></li>
                            <li><a data-value="journal" href="#"><i class="icon-blank"></i> Journal</a></li>
                            <li><a data-value="simplex" href="#"><i class="icon-blank"></i> Simplex</a></li>
                            <li><a data-value="slate" href="#"><i class="icon-blank"></i> Slate</a></li>
                            <li><a data-value="spacelab" href="#"><i class="icon-blank"></i> Spacelab</a></li>
                            <li><a data-value="united" href="#"><i class="icon-blank"></i> United</a></li>
                        </ul>
                    </div>
                    <!-- theme selector ends -->

                    <!-- user dropdown starts -->
                    <div class="btn-group pull-right" >
                        <a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
                            <i class="icon-user"></i><span class="hidden-phone"> admin</span>
                            <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="#">Profile</a></li>
                            <li class="divider"></li>
                            <li><a href="login.html">Logout</a></li>
                        </ul>
                    </div>
                    <!-- user dropdown ends -->

                    <div class="top-nav nav-collapse">
                        <ul class="nav">
                            <li><a href="#">Visit Site</a></li>
                            <li>
                                <form class="navbar-search pull-left">
                                    <input placeholder="Search" class="search-query span2" name="query" type="text">
                                </form>
                            </li>
                        </ul>
                    </div><!--/.nav-collapse -->
                </div>
            </div>
        </div>
        <!-- topbar ends -->
        <div class="container-fluid">
            <div class="row-fluid">

                <!-- left menu starts -->
                <div class="span2 main-menu-span">
                    <div class="well nav-collapse sidebar-nav">
                        <ul class="nav nav-tabs nav-stacked main-menu">
                            <li class="nav-header hidden-tablet">Main</li>
                            <li><a class="ajax-link" href="index.jsp"><i class="icon-home"></i><span class="hidden-tablet"> Dashboard</span></a></li>

                            <li><a class="ajax-link" href="AddNews.jsp"><i class="icon-edit"></i><span class="hidden-tablet"> Add News</span></a></li>
                            <li><a class="ajax-link" href="ManagerAcc.jsp"><i class="icon-home"></i><span class="hidden-tablet"> Manager User</span></a></li>
                        </ul>
                        <label id="for-is-ajax" class="hidden-tablet" for="is-ajax"><input id="is-ajax" type="checkbox"> Ajax on menu</label>
                    </div><!--/.well -->
                </div><!--/span-->
                <!-- left menu ends -->

                <noscript>
                <div class="alert alert-block span10">
                    <h4 class="alert-heading">Warning!</h4>
                    <p>You need to have <a href="http://en.wikipedia.org/wiki/JavaScript" target="_blank">JavaScript</a> enabled to use this site.</p>
                </div>
                </noscript>

                <div id="content" class="span10">
                    <!-- content starts -->


                    <div>
                        <ul class="breadcrumb">
                            <li>
                                <a href="#">Home</a> <span class="divider">/</span>
                            </li>
                            <li>
                                <a href="#">Dashboard</a>
                            </li>
                        </ul>
                    </div>
                    <div class="sortable row-fluid">
                        <a data-rel="tooltip" title="${adBean1.getNewTotal(100)} new Complaint in today" class="well span3 top-block" href="index.jsp?status=100" style="width:115px;">
                            <span class="icon32 icon-blue icon-sent"></span>
                            <div>All Complaint</div>
                            <div>${adBean1.getTotal(100)}</div>
                            <span class="notification">${adBean1.getNewTotal(100)}</span>
                        </a>

                        <a data-rel="tooltip" title="${adBean1.getNewTotal(0)} new complaint pending in today." class="well span3 top-block" href="index.jsp?status=0" style="width:115px;">
                            <span class="icon32 icon-color icon-clock"></span>
                            <div>Pending</div>
                            <div>${adBean1.getTotal(0)}</div>
                            <span class="notification yellow">${adBean1.getNewTotal(0)}</span>
                        </a>

                        <a data-rel="tooltip" title="$${adBean1.getNewTotal(1)} new complaint Processing." class="well span3 top-block" href="index.jsp?status=1" style="width:115px;">
                            <span class="icon32 icon-blue icon-gear"></span>
                            <div>Processing</div>
                            <div>${adBean1.getTotal(1)}</div>
                            <span class="notification blue">${adBean1.getNewTotal(1)}</span>
                        </a>

                        <a data-rel="tooltip" title="${adBean1.getNewTotal(2)} new complaint resolved." class="well span3 top-block" href="index.jsp?status=2" style="width:115px;">
                            <span class="icon32 icon-color icon-check"></span>
                            <div>Resolved</div>
                            <div>${adBean1.getTotal(2)}</div>
                            <span class="notification green">${adBean1.getNewTotal(2)}</span>
                        </a>
                        <a data-rel="tooltip" title="${adBean1.getNewTotal(3)} new complaint NOT resolved." class="well span3 top-block" href="index.jsp?status=3" style="width:115px;">
                            <span class="icon32 icon-red icon-close"></span>
                            <div>NOT Resolved</div>
                            <div>${adBean1.getTotal(3)}</div>
                            <span class="notification red">${adBean1.getNewTotal(3)}</span>
                        </a>
                        <a data-rel="tooltip" title="${adBean1.getNewTotal(4)} new complaint cancel." class="well span3 top-block" href="index.jsp?status=4" style="width:115px;">
                            <span class="icon32 icon-black icon-cancel"></span>
                            <div>Cancel</div>
                            <div>${adBean1.getTotal(4)}</div>
                            <span class="notification red">${adBean1.getNewTotal(4)}</span>
                        </a>
                    </div>
                    <div class="row-fluid sortable">		
                        <div class="box span12">
                            <div class="box-header well" data-original-title>
                                <c:if test="${param.status=='100'}">
                                    <h2><i class="icon-list"></i>&nbsp;All Complaint</h2>
                                </c:if>
                                <c:if test="${param.status!='100'}">
                                    <h2><i class="icon-list"></i> &nbsp;${autoBean.getStatusComplaint(param.status)} Complaint</h2>

                                </c:if>

                                <div class="box-icon">
                                    <a href="#" class="btn btn-setting btn-round"><i class="icon-cog"></i></a>
                                    <a href="#" class="btn btn-minimize btn-round"><i class="icon-chevron-up"></i></a>
                                    <a href="#" class="btn btn-close btn-round"><i class="icon-remove"></i></a>
                                </div>

                            </div>
                            <div class="box-content">                             
                                
                                           <form name="editUser" action="editUser"  method="POST">  
                                               User Name :      <input type="text" disabled="true" name="username" value ="${param['username']}"/><br/>
                                               Full Name :      <input type="text" name="fullname" /><br/>
                                               Email :          <input type="text" name="email" /><br/>
                                               Image :          <input type="text" name="imageurl" /><br/>
                                               Phone Number :   <input type="text" name="phone" /><br/>
                                               Address :        <input type="text" name="address" /><br/>
                                               <input type="submit" value="Edit"/>
                                           </form>                                                                    
                           
                        </div>
                    </div><!--/span-->

                </div><!--/row-->	
                <div class="box span4" style="width: 240px;">
                    <div class="box-header well" data-original-title>
                        <h2><i class="icon-list"></i> Weekly Stat</h2>
                        <div class="box-icon">
                            <a href="#" class="btn btn-setting btn-round"><i class="icon-cog"></i></a>
                            <a href="#" class="btn btn-minimize btn-round"><i class="icon-chevron-up"></i></a>
                            <a href="#" class="btn btn-close btn-round"><i class="icon-remove"></i></a>
                        </div>
                    </div>
                    <div class="box-content" >
                        <ul class="dashboard-list">
                            <li>
                                <a href="#">
                                    <i class="icon-arrow-up"></i>                               
                                    <span class="green">92</span>
                                    New Comments                                    
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <i class="icon-arrow-down"></i>
                                    <span class="red">15</span>
                                    New Registrations
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <i class="icon-minus"></i>
                                    <span class="blue">36</span>
                                    New Articles                                    
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <i class="icon-comment"></i>
                                    <span class="yellow">45</span>
                                    User reviews                                    
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <i class="icon-arrow-up"></i>                               
                                    <span class="green">112</span>
                                    New Comments                                    
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <i class="icon-arrow-down"></i>
                                    <span class="red">31</span>
                                    New Registrations
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <i class="icon-minus"></i>
                                    <span class="blue">93</span>
                                    New Articles                                    
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <i class="icon-comment"></i>
                                    <span class="yellow">254</span>
                                    User reviews                                    
                                </a>
                            </li>
                        </ul>
                    </div>
                </div><!--/span-->
            </div><!--/row-->




            <!-- content ends -->
        </div><!--/#content.span10-->
    </div><!--/fluid-row-->

    <hr>

    <div class="modal hide fade" id="myModal">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">×</button>
            <h3>Settings</h3>
        </div>
        <div class="modal-body">
            <p>Here settings can be configured...</p>
        </div>
        <div class="modal-footer">
            <a href="#" class="btn" data-dismiss="modal">Close</a>
            <a href="#" class="btn btn-primary">Save changes</a>
        </div>
    </div>

    <footer>
        <p class="pull-left">&copy; <a href="http://usman.it" target="_blank">Muhammad Usman</a> 2012</p>
        <p class="pull-right">Powered by: <a href="http://usman.it/free-responsive-admin-template">Charisma</a></p>
    </footer>

</div><!--/.fluid-container-->

<!-- external javascript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->

<!-- jQuery -->
<script src="js/jquery-1.7.2.min.js"></script>
<!-- jQuery UI -->
<script src="js/jquery-ui-1.8.21.custom.min.js"></script>
<!-- transition / effect library -->
<script src="js/bootstrap-transition.js"></script>
<!-- alert enhancer library -->
<script src="js/bootstrap-alert.js"></script>
<!-- modal / dialog library -->
<script src="js/bootstrap-modal.js"></script>
<!-- custom dropdown library -->
<script src="js/bootstrap-dropdown.js"></script>
<!-- scrolspy library -->
<script src="js/bootstrap-scrollspy.js"></script>
<!-- library for creating tabs -->
<script src="js/bootstrap-tab.js"></script>
<!-- library for advanced tooltip -->
<script src="js/bootstrap-tooltip.js"></script>
<!-- popover effect library -->
<script src="js/bootstrap-popover.js"></script>
<!-- button enhancer library -->
<script src="js/bootstrap-button.js"></script>
<!-- accordion library (optional, not used in demo) -->
<script src="js/bootstrap-collapse.js"></script>
<!-- carousel slideshow library (optional, not used in demo) -->
<script src="js/bootstrap-carousel.js"></script>
<!-- autocomplete library -->
<script src="js/bootstrap-typeahead.js"></script>
<!-- tour library -->
<script src="js/bootstrap-tour.js"></script>
<!-- library for cookie management -->
<script src="js/jquery.cookie.js"></script>
<!-- calander plugin -->
<script src='js/fullcalendar.min.js'></script>
<!-- data table plugin -->
<script src='js/jquery.dataTables.min.js'></script>

<!-- chart libraries start -->
<script src="js/excanvas.js"></script>
<script src="js/jquery.flot.min.js"></script>
<script src="js/jquery.flot.pie.min.js"></script>
<script src="js/jquery.flot.stack.js"></script>
<script src="js/jquery.flot.resize.min.js"></script>
<!-- chart libraries end -->

<!-- select or dropdown enhancer -->
<script src="js/jquery.chosen.min.js"></script>
<!-- checkbox, radio, and file input styler -->
<script src="js/jquery.uniform.min.js"></script>
<!-- plugin for gallery image view -->
<script src="js/jquery.colorbox.min.js"></script>
<!-- rich text editor library -->
<script src="js/jquery.cleditor.min.js"></script>
<!-- notification plugin -->
<script src="js/jquery.noty.js"></script>
<!-- file manager library -->
<script src="js/jquery.elfinder.min.js"></script>
<!-- star rating plugin -->
<script src="js/jquery.raty.min.js"></script>
<!-- for iOS style toggle switch -->
<script src="js/jquery.iphone.toggle.js"></script>
<!-- autogrowing textarea plugin -->
<script src="js/jquery.autogrow-textarea.js"></script>
<!-- multiple file upload plugin -->
<script src="js/jquery.uploadify-3.1.min.js"></script>
<!-- history.js for cross-browser state change on ajax -->
<script src="js/jquery.history.js"></script>
<!-- application script for Charisma demo -->
<script src="js/charisma.js"></script>


</body>
</html>

