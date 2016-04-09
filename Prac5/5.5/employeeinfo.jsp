<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page language="java" import="java.lang.*" import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
Connection con = null;
String url = "jdbc:mysql://localhost/";
String driver = "com.mysql.jdbc.Driver";
String userName ="root";
String password="";
Class.forName(driver);
con = DriverManager.getConnection(url,userName,password);
Statement stmt=null;
%>

<form method="GET" ACTION="process.jsp">
<h3> <P ALIGN="CENTER"> <FONT SIZE=5> EMPLOYEE INFORMATION </FONT> </P> </h3> </br> </br>
<br>
<br>
<table callspacing=5 cellpadding=5 bgcolor="lightblue" colspan=2 rowspan=2 align="center">
<tr>
<td> <font size=5> Enter Employee ID </td>
<td> <input type="TEXT"  ID="id" name="empid"> </font> 
<select name="empIds" onchange="document.getElementById('id').value=this.options[this.selectedIndex].text"> <option>Select One</option>
<%
String rec="SELECT empid,empname FROM Employee ORDER BY empid";
try {
stmt=con.createStatement();
ResultSet rs=stmt.executeQuery(rec);
while(rs.next())
{
%>
<option><%= rs.getInt(1)%></option>
<%}
}
catch(Exception e){
System.out.println(e);
}
%>
</select>
</font> </td>
</tr>
<tr>
<td> <font size=5> Enter Employee Name </td>
<td><input type="text" name="empname"> </font> </td>
</tr>
<tr> <font size=5> <B>
<td><input type="RADIO" name="r1" VALUE="add" >Insert </td>
</tr>
<tr>
<td><input type="RADIO" name="r1" VALUE="del" >Delete </td>
</tr>
<tr>
<td><input type="RADIO" name="r1" VALUE="mod" >Modify </td>
</tr>
</font> </b>
<tr> <td><input type="SUBMIT" VALUE="Submit"> 
<input type="RESET" value="Reset"> </TD>
</tr>
</body>
</html>