<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
Patel Payal <br> 130050131545 <br> <br>
<form:form commandName="login" method="POST" name="login">

Username:<form:input path="username"/> 
<font color="red"><form:errors path="username"/></font><br/><br/>

Password:<form:password path="password"/>
<font color="red"><form:errors path="password"/></font><br/><br/>

<input type="submit" value="Login"/>

</form:form>

</center>
</body>
</html>