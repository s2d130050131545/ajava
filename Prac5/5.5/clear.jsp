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

String str=request.getParameter("r1");
String name=request.getParameter("empname");
String code=request.getParameter("empid");
int EmpID=Integer.parseInt(code);
try {
Class.forName(driver);
con = DriverManager.getConnection(url,userName,password);
String sql = "delete from Employee where empid= ?";
PreparedStatement stmt=null;
stmt=con.prepareStatement(sql);
stmt.setInt(1,EmpID);
int erase=stmt.executeUpdate();
if(erase==0) { %>
<script language="javascript">
alert("Deleted successfully");
</script>
<%
}
if(erase==1) { %>
<script language="javascript">
alert("Deleted successfully");
</script>
<%
}

stmt.close();
con.close();
out.println("Data delete successfully from database.");
}
catch(Exception e) {
out.println(e);
}
%>
</body>
</html>