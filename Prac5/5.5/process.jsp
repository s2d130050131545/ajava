<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page language="java" %>
<%@ page import="java.lang.*" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String str=request.getParameter("r1");
String name=request.getParameter("empname");
String code=request.getParameter("empid"); 

if(str.equals("add")) {
%>
<jsp:forward page="insert.jsp"/>

<%
}
else if(str.equals("del")) {
%>
<jsp:forward page="clear.jsp" />
<%
}
else if(str.equals("mod")) {
%>
<jsp:forward page="update.jsp" />
<%
}
else {
%>
<jsp:forward page="Noresponse.html" />
<%
}
%>
</body>
</html>