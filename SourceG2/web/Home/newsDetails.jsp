<%-- 
    Document   : newsDetails
    Created on : Aug 5, 2014, 12:02:01 PM
    Author     : Think Different
--%>

<%@page import="DataAccess.DBFunctionNews"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:useBean id="newsBean" scope="session" class="DataAccess.DBFunctionNews"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:set var="n" value="${newsBean.getNewsByID(param.id)}"/>




        <img src="images/news/${n.thumbnail}" alt="image" style="width:300px; height:180px; float:left; margin:10px;"/>
        <h3 style="font-size: x-large; font-weight: bolder;">${n.title}</h3>
        <c:forEach var="i" begin="1" end="${n.star}">
            <a href="../ratingNewsAction?id=${n.id}&username=${user}&rate=${i}"><img style="height: 20px; width: 20px;" src="images/news/icon/starOn.png"/></a>
            </c:forEach>
            <c:forEach var="i" begin="${n.star+1}" end="5">
            <a href="../ratingNewsAction?id=${n.id}&username=${user}&rate=${i}"><img style="height: 20px; width: 20px;" src="images/news/icon/starOff.png"/></a>
            </c:forEach>
        <br/>

    <html>${n.content}</html>



</body>
</html>
