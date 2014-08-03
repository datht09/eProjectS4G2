<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="adBean1" scope="session" class="DataAccess.Admin"/>
<jsp:useBean id="autoBean" scope="session" class="DataAccess.AutoGenerate"/>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <!--[if IE]><meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"><![endif]-->



        <title>G2 ADMIN | Dashboard</title>

        <link rel="stylesheet" href="../neon-x/assets/js/jquery-ui/css/no-theme/jquery-ui-1.10.3.custom.min.css"  id="style-resource-1">
        <link rel="stylesheet" href="../neon-x/assets/css/font-icons/entypo/css/entypo.css"  id="style-resource-2">
        <link rel="stylesheet" href="../neon-x/assets/css/font-icons/entypo/css/animation.css"  id="style-resource-3">
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Noto+Sans:400,700,400italic"  id="style-resource-4">
        <link rel="stylesheet" href="../neon-x/assets/css/neon.css"  id="style-resource-5">
        <link rel="stylesheet" href="../neon-x/assets/css/custom.css"  id="style-resource-6">

        <script src="../neon-x/assets/js/jquery-1.10.2.min.js"></script>


    </head>
    <body class="page-body page-fade">

        <div class="page-container">	

            <div class="sidebar-menu">

                <header class="logo-env">

                    <!-- logo -->
                    <div class="logo">
                        <a href="../neon-x/dashboard/main/index.html">
                            <img src="../neon-x/assets/images/logo.png" alt="" />
                        </a>
                    </div>

                    <!-- logo collapse icon -->
                    <div class="sidebar-collapse">
                        <a href="#" class="sidebar-collapse-icon with-animation"><!-- add class "with-animation" if you want sidebar to have animation during expanding/collapsing transition -->
                            <i class="entypo-menu"></i>
                        </a>
                    </div>


                    <!-- open/close menu icon (do not remove if you want to enable menu on mobile devices) -->
                    <div class="sidebar-mobile-menu visible-xs">
                        <a href="#" class="with-animation"><!-- add class "with-animation" to support animation -->
                            <i class="entypo-menu"></i>
                        </a>
                    </div>

                </header>


                <ul id="main-menu" class="">
                    <li id="search">
                        <form method="get" action="#">
                            <input type="text" name="q" class="search-input" placeholder="Search something..." />
                            <button type="submit"><i class="entypo-search"></i></button>
                        </form>
                    </li>
                    <li class="opened active">
                        <a href="../neon-x/dashboard/main/index.html"><i class="entypo-gauge"></i><span>Dashboard</span></a>




                    </li>
                </ul>


            </div>	
            <div class="main-content">

                <div class="row">

                    <!-- Profile Info and Notifications -->
                    <div class="col-md-6 col-sm-8 clearfix">

                        <ul class="user-info pull-left pull-none-xsm">

                            <!-- Profile Info -->
                            <li class="profile-info dropdown"><!-- add class "pull-right" if you want to place this from right -->

                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <img src="../neon-x/assets/images/thumb-1.png" alt="" class="img-circle" />
                                    Art Ramadani
                                </a>

                                <ul class="dropdown-menu">

                                    <!-- Reverse Caret -->
                                    <li class="caret"></li>

                                    <!-- Profile sub-links -->
                                    <li>
                                        <a href="#">
                                            <i class="entypo-user"></i>
                                            Edit Profile
                                        </a>
                                    </li>

                                    <li>
                                        <a href="../neon-x/mailbox/main/index.html">
                                            <i class="entypo-mail"></i>
                                            Inbox
                                        </a>
                                    </li>

                                    <li>
                                        <a href="../neon-x/extra/calendar/index.html">
                                            <i class="entypo-calendar"></i>
                                            Calendar
                                        </a>
                                    </li>

                                    <li>
                                        <a href="#">
                                            <i class="entypo-clipboard"></i>
                                            Tasks
                                        </a>
                                    </li>
                                </ul>
                            </li>

                        </ul>

                        <ul class="user-info pull-left pull-right-xs pull-none-xsm">

                            <!-- Raw Notifications -->
                            <li class="notifications dropdown">

                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                                    <i class="entypo-attention"></i>
                                    <span class="badge badge-info">6</span>
                                </a>

                                <ul class="dropdown-menu">
                                    <li class="top">
                                        <p class="small">
                                            <a href="#" class="pull-right">Mark all Read</a>
                                            You have <strong>3</strong> new notifications.
                                        </p>
                                    </li>

                                    <li>
                                        <ul class="dropdown-menu-list scroller">
                                            <li class="unread notification-success">
                                                <a href="#">
                                                    <i class="entypo-user-add pull-right"></i>

                                                    <span class="line">
                                                        <strong>New user registered</strong>
                                                    </span>

                                                    <span class="line small">
                                                        30 seconds ago
                                                    </span>
                                                </a>
                                            </li>

                                            <li class="unread notification-secondary">
                                                <a href="#">
                                                    <i class="entypo-heart pull-right"></i>

                                                    <span class="line">
                                                        <strong>Someone special liked this</strong>
                                                    </span>

                                                    <span class="line small">
                                                        2 minutes ago
                                                    </span>
                                                </a>
                                            </li>

                                            <li class="notification-primary">
                                                <a href="#">
                                                    <i class="entypo-user pull-right"></i>

                                                    <span class="line">
                                                        <strong>Privacy settings have been changed</strong>
                                                    </span>

                                                    <span class="line small">
                                                        3 hours ago
                                                    </span>
                                                </a>
                                            </li>

                                            <li class="notification-danger">
                                                <a href="#">
                                                    <i class="entypo-cancel-circled pull-right"></i>

                                                    <span class="line">
                                                        John cancelled the event
                                                    </span>

                                                    <span class="line small">
                                                        9 hours ago
                                                    </span>
                                                </a>
                                            </li>

                                            <li class="notification-info">
                                                <a href="#">
                                                    <i class="entypo-info pull-right"></i>

                                                    <span class="line">
                                                        The server is status is stable
                                                    </span>

                                                    <span class="line small">
                                                        yesterday at 10:30am
                                                    </span>
                                                </a>
                                            </li>

                                            <li class="notification-warning">
                                                <a href="#">
                                                    <i class="entypo-rss pull-right"></i>

                                                    <span class="line">
                                                        New comments waiting approval
                                                    </span>

                                                    <span class="line small">
                                                        last week
                                                    </span>
                                                </a>
                                            </li>
                                        </ul>
                                    </li>

                                    <li class="external">
                                        <a href="#">View all notifications</a>
                                    </li>				</ul>

                            </li>

                            <!-- Message Notifications -->
                            <li class="notifications dropdown">

                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                                    <i class="entypo-mail"></i>
                                    <span class="badge badge-secondary">10</span>
                                </a>

                                <ul class="dropdown-menu">
                                    <li>
                                        <ul class="dropdown-menu-list scroller">
                                            <li class="active">
                                                <a href="#">
                                                    <span class="image pull-right">
                                                        <img src="../neon-x/assets/images/thumb-1.png" alt="" class="img-circle" />
                                                    </span>

                                                    <span class="line">
                                                        <strong>Luc Chartier</strong>
                                                        - yesterday
                                                    </span>

                                                    <span class="line desc small">
                                                        This ain’t our first item, it is the best of the rest.
                                                    </span>
                                                </a>
                                            </li>

                                            <li class="active">
                                                <a href="#">
                                                    <span class="image pull-right">
                                                        <img src="../neon-x/assets/images/thumb-2.png" alt="" class="img-circle" />
                                                    </span>

                                                    <span class="line">
                                                        <strong>Salma Nyberg</strong>
                                                        - 2 days ago
                                                    </span>

                                                    <span class="line desc small">
                                                        Oh he decisively impression attachment friendship so if everything. 
                                                    </span>
                                                </a>
                                            </li>

                                            <li>
                                                <a href="#">
                                                    <span class="image pull-right">
                                                        <img src="../neon-x/assets/images/thumb-3.png" alt="" class="img-circle" />
                                                    </span>

                                                    <span class="line">
                                                        Hayden Cartwright
                                                        - a week ago
                                                    </span>

                                                    <span class="line desc small">
                                                        Whose her enjoy chief new young. Felicity if ye required likewise so doubtful.
                                                    </span>
                                                </a>
                                            </li>

                                            <li>
                                                <a href="#">
                                                    <span class="image pull-right">
                                                        <img src="../neon-x/assets/images/thumb-4.png" alt="" class="img-circle" />
                                                    </span>

                                                    <span class="line">
                                                        Sandra Eberhardt
                                                        - 16 days ago
                                                    </span>

                                                    <span class="line desc small">
                                                        On so attention necessary at by provision otherwise existence direction.
                                                    </span>
                                                </a>
                                            </li>
                                        </ul>
                                    </li>

                                    <li class="external">
                                        <a href="../neon-x/mailbox/main/index.html">All Messages</a>
                                    </li>				</ul>

                            </li>

                            <!-- Task Notifications -->
                            <li class="notifications dropdown">

                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                                    <i class="entypo-list"></i>
                                    <span class="badge badge-warning">1</span>
                                </a>

                                <ul class="dropdown-menu">
                                    <li class="top">
                                        <p>You have 6 pending tasks</p>
                                    </li>

                                    <li>
                                        <ul class="dropdown-menu-list scroller">
                                            <li>
                                                <a href="#">
                                                    <span class="task">
                                                        <span class="desc">Procurement</span>
                                                        <span class="percent">27%</span>
                                                    </span>

                                                    <span class="progress">
                                                        <span style="width: 27%;" class="progress-bar progress-bar-success">
                                                            <span class="sr-only">27% Complete</span>
                                                        </span>
                                                    </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <span class="task">
                                                        <span class="desc">App Development</span>
                                                        <span class="percent">83%</span>
                                                    </span>

                                                    <span class="progress progress-striped">
                                                        <span style="width: 83%;" class="progress-bar progress-bar-danger">
                                                            <span class="sr-only">83% Complete</span>
                                                        </span>
                                                    </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <span class="task">
                                                        <span class="desc">HTML Slicing</span>
                                                        <span class="percent">91%</span>
                                                    </span>

                                                    <span class="progress">
                                                        <span style="width: 91%;" class="progress-bar progress-bar-success">
                                                            <span class="sr-only">91% Complete</span>
                                                        </span>
                                                    </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <span class="task">
                                                        <span class="desc">Database Repair</span>
                                                        <span class="percent">12%</span>
                                                    </span>

                                                    <span class="progress progress-striped">
                                                        <span style="width: 12%;" class="progress-bar progress-bar-warning">
                                                            <span class="sr-only">12% Complete</span>
                                                        </span>
                                                    </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <span class="task">
                                                        <span class="desc">Backup Create Progress</span>
                                                        <span class="percent">54%</span>
                                                    </span>

                                                    <span class="progress progress-striped">
                                                        <span style="width: 54%;" class="progress-bar progress-bar-info">
                                                            <span class="sr-only">54% Complete</span>
                                                        </span>
                                                    </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <span class="task">
                                                        <span class="desc">Upgrade Progress</span>
                                                        <span class="percent">17%</span>
                                                    </span>

                                                    <span class="progress progress-striped">
                                                        <span style="width: 17%;" class="progress-bar progress-bar-important">
                                                            <span class="sr-only">17% Complete</span>
                                                        </span>
                                                    </span>
                                                </a>
                                            </li>
                                        </ul>
                                    </li>

                                    <li class="external">
                                        <a href="#">See all tasks</a>
                                    </li>				</ul>

                            </li>

                        </ul>

                    </div>


                    <!-- Raw Links -->
                    <div class="col-md-6 col-sm-4 clearfix hidden-xs">

                        <ul class="list-inline links-list pull-right">
                            <li>
                                <a href="#">Live Site</a>
                            </li>

                            <li class="sep"></li>

                            <li>
                                <a href="#" data-toggle="chat" data-animate="1" data-collapse-sidebar="1">
                                    <i class="entypo-chat"></i>
                                    Chat

                                    <span class="badge badge-success chat-notifications-badge is-hidden">0</span>
                                </a>
                            </li>

                            <li class="sep"></li>

                            <li>
                                <a href="../neon-x/extra/login/index.html">
                                    Log Out <i class="entypo-logout right"></i>
                                </a>
                            </li>
                        </ul>

                    </div>

                </div>

                <hr />

                <script type="text/javascript">
                    jQuery(document).ready(function($)
                    {
                        // Sample Toastr Notification
                        setTimeout(function()
                        {
                            var opts = {
                                "closeButton": true,
                                "debug": false,
                                "positionClass": "toast-top-right",
                                "toastClass": "black",
                                "onclick": null,
                                "showDuration": "300",
                                "hideDuration": "1000",
                                "timeOut": "5000",
                                "extendedTimeOut": "1000",
                                "showEasing": "swing",
                                "hideEasing": "linear",
                                "showMethod": "fadeIn",
                                "hideMethod": "fadeOut"
                            };

                            toastr.success("You have been awarded with 1 year free subscription. Enjoy it!", "Account Subcription Updated", opts);
                        }, 3000);


                        // Sparkline Charts
                        $('.inlinebar').sparkline('html', {type: 'bar', barColor: '#ff6264'});
                        $('.inlinebar-2').sparkline('html', {type: 'bar', barColor: '#445982'});
                        $('.inlinebar-3').sparkline('html', {type: 'bar', barColor: '#00b19d'});
                        $('.bar').sparkline([[1, 4], [2, 3], [3, 2], [4, 1]], {type: 'bar'});
                        $('.pie').sparkline('html', {type: 'pie', borderWidth: 0, sliceColors: ['#3d4554', '#ee4749', '#00b19d']});
                        $('.linechart').sparkline();
                        $('.pageviews').sparkline('html', {type: 'bar', height: '30px', barColor: '#ff6264'});
                        $('.uniquevisitors').sparkline('html', {type: 'bar', height: '30px', barColor: '#00b19d'});


                        $(".monthly-sales").sparkline([1, 2, 3, 5, 6, 7, 2, 3, 3, 4, 3, 5, 7, 2, 4, 3, 5, 4, 5, 6, 3, 2], {
                            type: 'bar',
                            barColor: '#485671',
                            height: '80px',
                            barWidth: 10,
                            barSpacing: 2
                        });


                        // JVector Maps
                        var map = $("#map");

                        map.vectorMap({
                            map: 'europe_merc_en',
                            zoomMin: '3',
                            backgroundColor: '#383f47',
                            focusOn: {x: 0.5, y: 0.8, scale: 3}
                        });



                        // Line Charts
                        var line_chart_demo = $("#line-chart-demo");

                        var line_chart = Morris.Line({
                            element: 'line-chart-demo',
                            data: [
                                {y: '2006', a: 100, b: 90},
                                {y: '2007', a: 75, b: 65},
                                {y: '2008', a: 50, b: 40},
                                {y: '2009', a: 75, b: 65},
                                {y: '2010', a: 50, b: 40},
                                {y: '2011', a: 75, b: 65},
                                {y: '2012', a: 100, b: 90}
                            ],
                            xkey: 'y',
                            ykeys: ['a', 'b'],
                            labels: ['October 2013', 'November 2013'],
                            redraw: true
                        });

                        line_chart_demo.parent().attr('style', '');


                        // Donut Chart
                        var donut_chart_demo = $("#donut-chart-demo");

                        donut_chart_demo.parent().show();

                        var donut_chart = Morris.Donut({
                            element: 'donut-chart-demo',
                            data: [
                                {label: "Download Sales", value: getRandomInt(10, 50)},
                                {label: "In-Store Sales", value: getRandomInt(10, 50)},
                                {label: "Mail-Order Sales", value: getRandomInt(10, 50)}
                            ],
                            colors: ['#707f9b', '#455064', '#242d3c']
                        });

                        donut_chart_demo.parent().attr('style', '');


                        // Area Chart
                        var area_chart_demo = $("#area-chart-demo");

                        area_chart_demo.parent().show();

                        var area_chart = Morris.Area({
                            element: 'area-chart-demo',
                            data: [
                                {y: '2006', a: 100, b: 90},
                                {y: '2007', a: 75, b: 65},
                                {y: '2008', a: 50, b: 40},
                                {y: '2009', a: 75, b: 65},
                                {y: '2010', a: 50, b: 40},
                                {y: '2011', a: 75, b: 65},
                                {y: '2012', a: 100, b: 90}
                            ],
                            xkey: 'y',
                            ykeys: ['a', 'b'],
                            labels: ['Series A', 'Series B'],
                            lineColors: ['#303641', '#576277']
                        });

                        area_chart_demo.parent().attr('style', '');




                        // Rickshaw
                        var seriesData = [[], []];

                        var random = new Rickshaw.Fixtures.RandomData(50);

                        for (var i = 0; i < 50; i++)
                        {
                            random.addData(seriesData);
                        }

                        var graph = new Rickshaw.Graph({
                            element: document.getElementById("rickshaw-chart-demo"),
                            height: 193,
                            renderer: 'area',
                            stroke: false,
                            preserve: true,
                            series: [{
                                    color: '#73c8ff',
                                    data: seriesData[0],
                                    name: 'Upload'
                                }, {
                                    color: '#e0f2ff',
                                    data: seriesData[1],
                                    name: 'Download'
                                }
                            ]
                        });

                        graph.render();

                        var hoverDetail = new Rickshaw.Graph.HoverDetail({
                            graph: graph,
                            xFormatter: function(x) {
                                return new Date(x * 1000).toString();
                            }
                        });

                        var legend = new Rickshaw.Graph.Legend({
                            graph: graph,
                            element: document.getElementById('rickshaw-legend')
                        });

                        var highlighter = new Rickshaw.Graph.Behavior.Series.Highlight({
                            graph: graph,
                            legend: legend
                        });

                        setInterval(function() {
                            random.removeData(seriesData);
                            random.addData(seriesData);
                            graph.update();

                        }, 500);
                    });


                    function getRandomInt(min, max)
                    {
                        return Math.floor(Math.random() * (max - min + 1)) + min;
                    }
                </script>


                <div class="row">
                    <div class="col-sm-3">
                        <a href="index.jsp?status=0">
                        <div class="tile-stats tile-orange">
                            <div class="icon"><i class="entypo-clock"></i></div>
                            <div class="num" data-start="0" data-end="${adBean1.getTotal(0)}" data-postfix="" data-duration="1500" data-delay="0">0</div>

                            <h3>Pending</h3>
                            <p>${adBean1.getNewTotal(0)} in today</p>
                        </div>
                        </a>
                    </div>

                    <div class="col-sm-3">

                        <div class="tile-stats tile-blue">
                            <div class="icon"><i class="entypo-cog"></i></div>
                            <div class="num" data-start="0" data-end="${adBean1.getTotal(1)}" data-postfix="" data-duration="1500" data-delay="600">0</div>

                            <h3>Processing</h3>
                            <p>${adBean1.getNewTotal(1)} in today</p>
                        </div>

                    </div>

                    <div class="col-sm-3">

                        <div class="tile-stats tile-green">
                            <div class="icon"><i class="entypo-check"></i></div>
                            <div class="num" data-start="0" data-end="${adBean1.getTotal(2)}" data-postfix="" data-duration="1500" data-delay="1200">0</div>

                            <h3>Resolved</h3>
                            <p>${adBean1.getNewTotal(2)} in today</p>
                        </div>

                    </div>

                    <div class="col-sm-3">

                        <div class="tile-stats tile-red">
                            <div class="icon"><i class="entypo-cancel"></i></div>
                            <div class="num" data-start="0" data-end="${adBean1.getTotal(3)}" data-postfix="" data-duration="1500" data-delay="1800">0</div>

                            <h4 style="color: #fff;">NOT Resolved</h4>
                            <p>${adBean1.getNewTotal(3)} in today</p>
                        </div>

                    </div>
                    <div class="col-sm-3">

                        <div class="tile-stats tile-entry">
                            <div class="icon"><i class="entypo-cancel-circled"></i></div>
                            <div class="num" data-start="0" data-end="${adBean1.getTotal(4)}" data-postfix="" data-duration="1500" data-delay="1800">0</div>

                            <h3>Cancel</h3>
                            <p>${adBean1.getNewTotal(4)} in today</p>
                        </div>

                    </div>
                    <div class="col-sm-3">

                        <div class="tile-stats tile-aqua">
                            <div class="icon"><i class="entypo-list"></i></div>
                            <div class="num" data-start="0" data-end="${adBean1.getTotal(100)}" data-postfix="" data-duration="1500" data-delay="1800">0</div>

                            <h3>Total</h3>
                            <p>${adBean1.getNewTotal(100)} in today</p>
                        </div>

                    </div>

                </div>
                        <div class="row" style="margin-left: 10px;">
                    <form method="get" action="index.jsp" >
                        <div class="control-group">

                            <div class="controls">
                                <div style="float: left;">
                                    Department:
                                    <br/>
                                    <select style="width:280px;" name="department" class="select2" multiple>
                                        <c:forEach var="de" items="${adBean1.listDepartment}">
                                            <c:if test= "${not empty param.department}">
                                                <c:forEach var="paramde" items="${paramValues.department}">
                                                    <c:if test="${paramde==de.id}">
                                                        <option value="${de.id}" selected>${de.name}</option>
                                                    </c:if>
                                                    <c:if test="${paramde!=cate.id}">
                                                        <option value="${de.id}">${de.name}</option>
                                                    </c:if>
                                                </c:forEach>
                                            </c:if>
                                            <c:if test="${empty paramValues.department}">
                                                <option value="${de.id}">${de.name}</option>
                                            </c:if> 
                                        </c:forEach>
                                    </select>
                                </div>
                                <div style="float: left; margin-left:20px;">
                                    Category: <br/>
                                    <select name="category" style="width:280px;"class="select2" multiple>
                                        <c:forEach var="cate" items="${adBean1.listCategory}">
                                            <c:if test= "${not empty param.category}">
                                                <c:forEach var="paramcate" items="${paramValues.category}">
                                                    <c:if test="${paramcate==cate.id}">
                                                        <option value="${cate.id}" selected>${cate.name}</option>
                                                    </c:if>
                                                    <c:if test="${paramcate!=cate.id}">
                                                        <option value="${cate.id}">${cate.name}</option>
                                                    </c:if>

                                                </c:forEach>
                                            </c:if>
                                            <c:if test="${empty param.category}">
                                                <option value="${cate.id}">${cate.name}</option>
                                            </c:if> 
                                        </c:forEach>

                                    </select>

                                </div>
                                <div style="float: left; margin-left:20px;">
                                    Date of lodging range:<br/>
                                    <input type="text" class="form-control daterange" data-format="YYYY-MM-DD" data-start-date="" data-end-date="" data-separator="," name="end" />
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
                    
                </div>




                <br />

                <table class="table table-bordered datatable" id="table-1">
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
                        <c:forEach var="com" items="${adBean1.getQueries(param.status,paramValues,param.start,param.end)}">
                            <tr>

                                <td><a href="#?id=${com.user}" style="color: #003bb3; font-weight:bold;">
                                        <c:if test="${adBean1.getAccDetails(com.user,1).imageurl.startsWith('http')!=true}">
                                            <img src="../Home/${adBean1.getAccDetails(com.user,1).imageurl}" style="width:32px; height:32px; margin:-5px; margin-right:5px;"/>
                                            ${adBean1.getAccDetails(com.user,1).fullname}</a></td>
                                        </c:if>
                                        <c:if test="${adBean1.getAccDetails(com.user,1).imageurl.startsWith('http')==true}">
                            <img src="${adBean1.getAccDetails(com.user,1).imageurl}" style="width:32px; height:32px; margin:-5px; margin-right:5px;"/>
                            ${adBean1.getAccDetails(com.user,1).fullname}</a></td>
                        </c:if>
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
                            <a class="btn btn-success" href="#">
                                <i class="icon-zoom-in icon-white"></i>  
                                View                                            
                            </a>
                            <a class="btn btn-info" href="#">
                                <i class="icon-edit icon-white"></i>  
                                Edit                                            
                            </a>
                            <a class="btn btn-danger" href="#">
                                <i class="icon-trash icon-white"></i> 
                                Delete
                            </a>
                        </td>

                        </tr>

                    </c:forEach>


                    </tbody>
                    <tfoot>
                        <tr>
                             <th>Employee</th>
                            <th>Department</th>
                            <th>Category</th>
                            <th>Date of Lodging</th>
                            <th>Date of Closing</th>
                            <th>Status</th>
                            <th>Action</th>
                        </tr>
                    </tfoot>
                </table>

                <script type="text/javascript">
                    jQuery(document).ready(function($)
                    {
                       $("#table-1").dataTable({
                            "sPaginationType": "bootstrap",
                            "aLengthMenu": [[5,10, 25, 50, -1], [5,10, 25, 50, "All"]],
                            "bStateSave": true
                        });
                       
                        $(".dataTables_wrapper select").select2({
                            minimumResultsForSearch: -1
                        });
                        
                        
                    });
                    
                </script>

                <br />
                <div class="row">
                    <div class="col-sm-8">

                        <div class="panel panel-primary" id="charts_env">

                            <div class="panel-heading">
                                <div class="panel-title">Site Stats</div>

                                <div class="panel-options">
                                    <ul class="nav nav-tabs">
                                        <li class=""><a href="#area-chart" data-toggle="tab">Area Chart</a></li>
                                        <li class="active"><a href="#line-chart" data-toggle="tab">Line Charts</a></li>
                                        <li class=""><a href="#pie-chart" data-toggle="tab">Pie Chart</a></li>
                                    </ul>
                                </div>
                            </div>

                            <div class="panel-body">

                                <div class="tab-content">

                                    <div class="tab-pane" id="area-chart">							
                                        <div id="area-chart-demo" class="morrischart" style="height: 300px"></div>
                                    </div>

                                    <div class="tab-pane active" id="line-chart">
                                        <div id="line-chart-demo" class="morrischart" style="height: 300px"></div>
                                    </div>

                                    <div class="tab-pane" id="pie-chart">
                                        <div id="donut-chart-demo" class="morrischart" style="height: 300px;"></div>
                                    </div>

                                </div>

                            </div>

                            <table class="table table-bordered table-responsive">

                                <thead>
                                    <tr>
                                        <th width="50%" class="col-padding-1">
                                <div class="pull-left">
                                    <div class="h4 no-margin">Pageviews</div>
                                    <small>54,127</small>
                                </div>
                                <span class="pull-right pageviews">4,3,5,4,5,6,5</span>

                                </th>
                                <th width="50%" class="col-padding-1">
                                <div class="pull-left">
                                    <div class="h4 no-margin">Unique Visitors</div>
                                    <small>25,127</small>
                                </div>
                                <span class="pull-right uniquevisitors">2,3,5,4,3,4,5</span>
                                </th>
                                </tr>
                                </thead>

                            </table>

                        </div>	

                    </div>

                    <div class="col-sm-4">

                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <div class="panel-title">
                                    <h4>
                                        Real Time Stats
                                        <br />
                                        <small>current server uptime</small>
                                    </h4>
                                </div>

                                <div class="panel-options">
                                    <a href="#sample-modal" data-toggle="modal" data-target="#sample-modal-dialog-1" class="bg"><i class="entypo-cog"></i></a>
                                    <a href="#" data-rel="collapse"><i class="entypo-down-open"></i></a>
                                    <a href="#" data-rel="reload"><i class="entypo-arrows-ccw"></i></a>
                                    <a href="#" data-rel="close"><i class="entypo-cancel"></i></a>
                                </div>
                            </div>

                            <div class="panel-body no-padding">
                                <div id="rickshaw-chart-demo">
                                    <div id="rickshaw-legend"></div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>


                <br />



                <br />





                <!-- Footer -->
                <footer class="main">

                    <div class="pull-right">
                        <a href="http://themeforest.net/item/neon-bootstrap-admin-theme/6434477" target="_blank"><strong>Purchase this theme for $21</strong></a>
                    </div>

                    &copy; 2014 <strong>G2</strong> Admin

                </footer>
            </div>





            <!-- Chat Histories -->




            <!-- Chat Histories -->
        </div>



        <!-- Sample Modal (Skin gray) -->


        <link rel="stylesheet" href="../neon-x/assets/js/jvectormap/jquery-jvectormap-1.2.2.css"  id="style-resource-1">
        <link rel="stylesheet" href="../neon-x/assets/js/rickshaw/rickshaw.min.css"  id="style-resource-2">
        <link rel="stylesheet" href="../neon-x/assets/js/select2/select2-bootstrap.css"  id="style-resource-1">
        <link rel="stylesheet" href="../neon-x/assets/js/select2/select2.css"  id="style-resource-2">
<link rel="stylesheet" href="../neon-x/assets/js/select2/select2-bootstrap.css"  id="style-resource-1">
	<link rel="stylesheet" href="../neon-x/assets/js/select2/select2.css"  id="style-resource-2">
	<link rel="stylesheet" href="../neon-x/assets/js/selectboxit/jquery.selectBoxIt.css"  id="style-resource-3">
	<link rel="stylesheet" href="../neon-x/assets/js/daterangepicker/daterangepicker-bs3.css"  id="style-resource-4">

	<script src="../neon-x/assets/js/gsap/main-gsap.js" id="script-resource-1"></script>
	<script src="../neon-x/assets/js/jquery-ui/js/jquery-ui-1.10.3.minimal.min.js" id="script-resource-2"></script>
	<script src="../neon-x/assets/js/bootstrap.min.js" id="script-resource-3"></script>
	<script src="../neon-x/assets/js/joinable.js" id="script-resource-4"></script>
	<script src="../neon-x/assets/js/resizeable.js" id="script-resource-5"></script>
	<script src="../neon-x/assets/js/neon-api.js" id="script-resource-6"></script>
	<script src="../neon-x/assets/js/select2/select2.min.js" id="script-resource-7"></script>
	<script src="../neon-x/assets/js/bootstrap-tagsinput.min.js" id="script-resource-8"></script>
	<script src="../neon-x/assets/js/typeahead.min.js" id="script-resource-9"></script>
	<script src="../neon-x/assets/js/selectboxit/jquery.selectBoxIt.min.js" id="script-resource-10"></script>
	<script src="../neon-x/assets/js/bootstrap-datepicker.js" id="script-resource-11"></script>
	<script src="../neon-x/assets/js/bootstrap-timepicker.min.js" id="script-resource-12"></script>
	<script src="../neon-x/assets/js/bootstrap-colorpicker.min.js" id="script-resource-13"></script>
	<script src="../neon-x/assets/js/daterangepicker/moment.min.js" id="script-resource-14"></script>
	<script src="../neon-x/assets/js/daterangepicker/daterangepicker.js" id="script-resource-15"></script>
	<script src="../neon-x/assets/js/jquery.multi-select.js" id="script-resource-16"></script>
	<script src="../neon-x/assets/js/neon-chat.js" id="script-resource-17"></script>
	<script src="../neon-x/assets/js/neon-custom.js" id="script-resource-18"></script>
	<script src="../neon-x/assets/js/neon-demo.js" id="script-resource-19"></script>
        <script src="../neon-x/assets/js/gsap/main-gsap.js" id="script-resource-1"></script>
        <script src="../neon-x/assets/js/jquery-ui/js/jquery-ui-1.10.3.minimal.min.js" id="script-resource-2"></script>
        <script src="../neon-x/assets/js/bootstrap.min.js" id="script-resource-3"></script>
        <script src="../neon-x/assets/js/joinable.js" id="script-resource-4"></script>
        <script src="../neon-x/assets/js/resizeable.js" id="script-resource-5"></script>
        <script src="../neon-x/assets/js/neon-api.js" id="script-resource-6"></script>
        <script src="../neon-x/assets/js/jquery.dataTables.min.js" id="script-resource-7"></script>
        <script src="../neon-x/assets/js/dataTables.bootstrap.js" id="script-resource-8"></script>
        <script src="../neon-x/assets/js/select2/select2.min.js" id="script-resource-9"></script>
        <script src="../neon-x/assets/js/neon-chat.js" id="script-resource-10"></script>
        <script src="../neon-x/assets/js/neon-custom.js" id="script-resource-11"></script>
        <script src="../neon-x/assets/js/neon-demo.js" id="script-resource-12"></script>
        <script src="../neon-x/assets/js/gsap/main-gsap.js" id="script-resource-1"></script>
        <script src="../neon-x/assets/js/jquery-ui/js/jquery-ui-1.10.3.minimal.min.js" id="script-resource-2"></script>
        <script src="../neon-x/assets/js/bootstrap.min.js" id="script-resource-3"></script>
        <script src="../neon-x/assets/js/joinable.js" id="script-resource-4"></script>
        <script src="../neon-x/assets/js/resizeable.js" id="script-resource-5"></script>
        <script src="../neon-x/assets/js/neon-api.js" id="script-resource-6"></script>
        <script src="../neon-x/assets/js/jvectormap/jquery-jvectormap-1.2.2.min.js" id="script-resource-7"></script>
        <script src="../neon-x/assets/js/jvectormap/jquery-jvectormap-europe-merc-en.js" id="script-resource-8"></script>
        <script src="../neon-x/assets/js/jquery.sparkline.min.js" id="script-resource-9"></script>
        <script src="../neon-x/assets/js/rickshaw/vendor/d3.v3.js" id="script-resource-10"></script>
        <script src="../neon-x/assets/js/rickshaw/rickshaw.min.js" id="script-resource-11"></script>
        <script src="../neon-x/assets/js/raphael-min.js" id="script-resource-12"></script>
        <script src="../neon-x/assets/js/morris.min.js" id="script-resource-13"></script>
        <script src="../neon-x/assets/js/toastr.js" id="script-resource-14"></script>
        <script src="../neon-x/assets/js/neon-chat.js" id="script-resource-15"></script>
        <script src="../neon-x/assets/js/neon-custom.js" id="script-resource-16"></script>
        <script src="../neon-x/assets/js/neon-demo.js" id="script-resource-17"></script>


    </body>
</html>