<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
String username=request.getParameter("username");
if(username==null) username="";

session.setAttribute("username",username);
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Session</title>
</head>
<body>
<p><a href="show.jsp">Click Here & Go To Next Page view the session value</a><p>
</body>
</html>