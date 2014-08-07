<%-- 
    Document   : detailQuery
    Created on : Aug 5, 2014, 9:20:57 AM
    Author     : Think Different
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="accBean" scope="session" class="DataAccess.DBFunction"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" media="screen" href="css2/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" media="screen" href="css2/font-awesome.min.css">

        <!-- SmartAdmin Styles : Please note (smartadmin-production.css) was created using LESS variables -->
        <link rel="stylesheet" type="text/css" media="screen" href="css2/smartadmin-production.min.css">
        <link rel="stylesheet" type="text/css" media="screen" href="css2/smartadmin-skins.min.css">


        <!-- Demo purpose only: goes with demo.js, you can delete this css when designing your own WebApp -->
        <link rel="stylesheet" type="text/css" media="screen" href="css2/demo.min.css">


        <!-- GOOGLE FONT -->
       





    </head>
    <body>
        <c:set var="ls" value="${accBean.getListReply(param.id)}"/>
        <c:set var="qr" value="${accBean.getQueryById(param.id)}"/>
        <c:set var="us" value="${accBean.getAccDetails(qr.username,0)}"/>
        <h1 style="margin-left:20px;">
            <c:if test="${qr.status=='Pending'}">
                <span class="label label-warning">${qr.status}</span>
            </c:if>
            <c:if test="${qr.status=='Processing'}">
                <span class="label label-primary">${qr.status}</span>
            </c:if>
            <c:if test="${qr.status=='Resolved'}">
                <span class="label label-success">${qr.status}</span>
            </c:if>
            <c:if test="${qr.status=='NOT Resolved'}">
                <span class=" label label-danger">${qr.status}</span>
            </c:if>
            <c:if test="${qr.status=='Cancel'}">
                <span class=" label label-default">${qr.status}</span>
            </c:if>
            ${qr.subject}
        </h1>

        <div class="chat-body no-padding profile-message">
            <ul>


                <li class="message" style="margin-bottom:20px;">
                    <img src="${us.imageurl}" class="online" alt="sunny" style="height:60px; width:55px">
                    <small class="text-muted pull-right ultra-light">Lodging: ${qr.dateOfLodging.substring(0,10)} &nbsp;&nbsp; Closing: ${qr.dateOfClosing.substring(0,10)}</small>
                    <span class="message-text"> <a class="username">Me
                        </a>
                        ${qr.content}</span>
                    <ul class="list-inline font-xs">


                    </ul>
                </li>
                <div id="refresh">
                    <div id="time">
                        <c:forEach var="r" items="${ls}">
                            <c:set var="ur" value="${accBean.getAccDetails(r.username,0)}"/>
                            <li class="message message-reply" style="margin-right:20px;">
                                <img src="${ur.imageurl}" class="offline" alt="user"  style="height:40px; width:50px;"/>
                                <span class="message-text"> 
                                    <c:if test="${ur.username!=sessionScope.user}">
                                        <a class="username">${ur.fullname}&nbsp;&nbsp;(Technician)</a>
                                    </c:if>
                                    <c:if test="${ur.username==sessionScope.user}">
                                        <a class="username">Me</a>
                                    </c:if>
                                    ${r.content} </span>

                                <ul class="list-inline font-xs">
                                    <li>
                                        <a href="javascript:void(0);" class="text-muted">${r.date.substring(0,16)} </a>
                                    </li>

                                </ul>

                            </li>

                        </c:forEach>
                    </div>
                </div>
                <li class="message message-reply"  style="margin-right:20px;" id="cmt">
                    <form action="../sendReplyAction">
                        <input type="hidden" name="queryID" value="${qr.id}"/>
                        <input type="hidden" name="username" value="${qr.username}"/>
                        <input class="form-control input-xs" placeholder="Type and enter" name="content" type="text" cols="1" rows="5"/>
                        <input type="submit" value="Reply" style="margin-top:5px;"/>
                    </form>
                </li>
            </ul>


        </div>
        <script src="js2/libs/jquery-2.0.2.min.js" type="text/javascript"></script>
        <script type="text/javascript">
            setInterval("my_function();", 1000);
            function my_function() {
                $('#refresh').load(location.href + ' #time');
            }
        </script>
    </body>



</html>
