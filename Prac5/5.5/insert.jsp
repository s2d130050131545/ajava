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
<FORM NAME="f1" ACTION="employeeinfo.jsp">
<%
Connection con = null;
String url = "jdbc:mysql://localhost/";
String driver = "com.mysql.jdbc.Driver";
String userName ="root";
String password="";

String str=request.getParameter("r1");
String empname=request.getParameter("empname");
String code=request.getParameter("empid");
int ent=0;
String failed="";
try{
String click="SELECT COUNT(*) FROM Employee WHERE empid='"+code+"' and empname='"+empname+"'";
Class.forName(driver);
con = DriverManager.getConnection(url,userName,password);
Statement stmt=null;
stmt=con.createStatement();
ResultSet ok = stmt.executeQuery(click);
while(ok.next()) {
ent=ok.getInt(1);
}
if(ent==0) {
String insertQry = "insert Employee values('"+code+"','"+empname+"')"; 
int val = stmt.executeUpdate(insertQry);

%>
<script language="javascript">
alert("Inserted successfully");
document.location="employeeinfo.jsp";
</script>
<%
}
if(ent==1) {
%>
<script language="javascript">
alert("This Emp ID already Exists");
document.location="employeeinfo.jsp";
</script>
<%
}
stmt.close();
con.close();
}
catch(Exception e) {
out.println(e.toString());
}
%>
</FORM>
</body>
</html>