<%-- 
    Document   : rateS
    Created on : Aug 5, 2014, 12:30:52 PM
    Author     : Think Different
--%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:redirect url="Home/newsDetails.jsp?id=${param.id}"/>
    </body>
</html>
