<%-- 
    Document   : index
    Created on : Jul 21, 2014, 3:22:19 PM
    Author     : Think Different
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="adBean1" scope="session" class="DataAccess.Admin"/>
<jsp:useBean id="techBean" scope="session" class="DataAccess.Technician" />
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
        <title>G2 Technician</title>
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
        <c:set var="tech" value="${sessionScope.tech}"/>
        <c:if test="${tech==null}">
            <c:redirect url="../index.html"/>
        </c:if>

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
                            <i class="icon-user"></i><span class="hidden-phone"> technician</span>
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
                        <a data-rel="tooltip" title="${techBean.getNewTotal(100,tech)} new Complaint in today" class="well span3 top-block" href="index.jsp?status=100" style="width:115px;">
                            <span class="icon32 icon-blue icon-sent"></span>
                            <div>All Complaint</div>
                            <div>${techBean.getTotal(100,tech)}</div>
                            <span class="notification">${techBean.getNewTotal(100,tech)}</span>
                        </a>

                        <a data-rel="tooltip" title="${techBean.getNewTotal(0,tech)} new complaint pending in today." class="well span3 top-block" href="index.jsp?status=0" style="width:115px;">
                            <span class="icon32 icon-color icon-clock"></span>
                            <div>Pending</div>
                            <div>${techBean.getTotal(0,tech)}</div>
                            <span class="notification yellow">${techBean.getNewTotal(0,tech)}</span>
                        </a>

                        <a data-rel="tooltip" title="$${techBean.getNewTotal(1,tech)} new complaint Processing." class="well span3 top-block" href="index.jsp?status=1" style="width:115px;">
                            <span class="icon32 icon-blue icon-gear"></span>
                            <div>Processing</div>
                            <div>${techBean.getTotal(1,tech)}</div>
                            <span class="notification blue">${techBean.getNewTotal(1,tech)}</span>
                        </a>

                        <a data-rel="tooltip" title="${techBean.getNewTotal(2,tech)} new complaint resolved." class="well span3 top-block" href="index.jsp?status=2" style="width:115px;">
                            <span class="icon32 icon-color icon-check"></span>
                            <div>Resolved</div>
                            <div>${techBean.getTotal(2,tech)}</div>
                            <span class="notification green">${techBean.getNewTotal(2,tech)}</span>
                        </a>
                        <a data-rel="tooltip" title="${techBean.getNewTotal(3,tech)} new complaint NOT resolved." class="well span3 top-block" href="index.jsp?status=3" style="width:115px;">
                            <span class="icon32 icon-red icon-close"></span>
                            <div>NOT Resolved</div>
                            <div>${techBean.getTotal(3,tech)}</div>
                            <span class="notification red">${techBean.getNewTotal(3,tech)}</span>
                        </a>
                        <a data-rel="tooltip" title="${techBean.getNewTotal(4,tech)} new complaint cancel." class="well span3 top-block" href="index.jsp?status=4" style="width:115px;">
                            <span class="icon32 icon-black icon-cancel"></span>
                            <div>Cancel</div>
                            <div>${techBean.getTotal(4,tech)}</div>
                            <span class="notification red">${techBean.getNewTotal(4,tech)}</span>
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
                                <form method="get" action="index.jsp" >
                                    <div class="control-group">

                                        <div class="controls">
                                            <div style="float: left;">
                                                Lodging Start:<br/>
                                                <input type="text" class="input-small datepicker" id="date01" value="${param.start}" name="start"/>
                                            </div>
                                            <div style="float: left; margin-left:20px;">
                                                Lodging end:<br/>
                                                <input type="text" class="input-small datepicker" id="date02" value="${param.end}" name="end"/>
                                            </div>

                                            <div style="float: left; margin-left:20px;">
                                                <br/>
                                                <button type="submit" class="btn btn-primary">Filter</button>

                                            </div>
                                            <div style="float: left; margin-left:20px; visibility: hidden;">
                                                Status:<br/>
                                                <input type="text" class="input-mini uneditable-input" value="${param.status}" readonly="true" name="status"/>

                                            </div>


                                        </div>


                                    </div>
                                </form>


                                <table class="table table-striped table-bordered bootstrap-datatable datatable">
                                    <thead>
                                        <tr>
                                            <th>Employee</th>
                                            <th>Department</th>
                                            <th>Category</th>
                                            <th>Date of Lodging</th>
                                            <th>Date of Closing</th>
                                            <th>Status</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>   

                                    <tbody>

                                        <c:forEach var="com" items="${techBean.getQueries(tech)}">
                                            <tr>

                                                <td><a href="#?id=${com.user}" style="color: #003bb3; font-weight:bold;"><img src="${adBean1.getAccDetails(com.user,1).imageurl}" style="width:32px; height:32px; margin:-5px; margin-right:5px;"/>${adBean1.getAccDetails(com.user,1).fullname}</a></td>
                                                <td class="center">${com.depart}</td>
                                                <td class="center">${com.category}</td>   
                                                <td class="center" style="color:#73a839; font-weight:bolder;" >${com.datelod}</td>
                                                <td class="center" style="color:#a9302a; font-weight:bolder;" >${com.dateclose}</td>
                                                <td class="center">
                                                    <c:if test="${com.status=='Pending'}">
                                                        <span class="label label-warning">${com.status}</span>
                                                    </c:if>
                                                    <c:if test="${com.status=='Processing'}">
                                                        <span class="label label-info">${com.status}</span>
                                                    </c:if>
                                                    <c:if test="${com.status=='Resolved'}">
                                                        <span class="label label-success">${com.status}</span>
                                                    </c:if>
                                                    <c:if test="${com.status=='NOT Resolved'}">
                                                        <span class="label label-important">${com.status}</span>
                                                    </c:if>
                                                    <c:if test="${com.status=='Cancel'}">
                                                        <span class="label label-inverse">${com.status}</span>
                                                    </c:if>
                                                </td>
                                                <td class="center">
                                                    <button class="badge btu" style="margin-left:auto; margin-right:auto;" id="popup_window" data-popup-target="#${com.id}qr" data-id="#${com.id}query" qr="detailQuery.jsp?id=${com.id}">View</button>
                                                </td>

                                            </tr>

                                        </c:forEach>

                                    </tbody>

                                </table>

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

    <link rel="stylesheet" type="text/css" href="css/fancybox.css"/>
    <script type="text/javascript" src="js/jquery.fancybox-1.3.4.pack.js"></script>
    <script src="lib/jquery.form.js" type="text/javascript"></script>
    <script src="lib/jquery.mockjax.js" type="text/javascript"></script>
    <script src="dist/jquery.validate.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(window).load(function() {

            jQuery(document).ready(function($) {
                var xc = $('[data-popup-target]');
                xc.click(function() {
                    $('#container').addClass('overlay');
                    var activePopup = $(this).attr('data-popup-target');
                    var ad = $(this).attr('data-id');
                    $(ad).attr('src', $(this).attr('qr'));
                    $(ad).addClass('datk');
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

                    var ad = $('.datk');
                    $(ad).attr('src', '');
                    $('.popup.visible').addClass('transitioning').removeClass('visible');
                    $('#container').removeClass('overlay');
                    setTimeout(function() {
                        $('.popup').removeClass('transitioning');
                    }, 200);
                }
                ;
                var v = jQuery("#sendqrform").validate(
                        );



            });
            var tabdat,
                    tabdat = $('#dattable').dataTable({
                "aLengthMenu": [[5, 7, 10, 20], [5, 7, 10, 20]],
                "iDisplayLength": 7
            });
            tabdat.fnSort([[0, 'desc']]);


        });

    </script>

</body>
</html>

