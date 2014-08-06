<%-- 
    Document   : sendreply
    Created on : Aug 5, 2014, 4:17:56 PM
    Author     : Think Different
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:redirect url="Home/detailQuery.jsp?id=${param.queryID}#cmt"/>
    </body>
</html>
