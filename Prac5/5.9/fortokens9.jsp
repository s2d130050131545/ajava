<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h4>Enrollment No:130050131545</h4>
        <h4>Testing forToken Core Tag</h4>
        <c:forTokens items="Apple,Mango,Banana" delims="," var="name">
            <c:out value="${name}"/><p>
        </c:forTokens>
    </body>
</html>
