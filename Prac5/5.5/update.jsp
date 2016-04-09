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


String rep=request.getParameter("empname");
String code=(String)request.getParameter("empid");
int ID=Integer.parseInt(code);
try {
Class.forName(driver);
con = DriverManager.getConnection(url,userName,password);
String rec="UPDATE Employee SET empname='"+rep+"' where empid='"+ID+"'";

Statement stmt=null;
stmt=con.createStatement();
int mod=stmt.executeUpdate(rec);
if(mod==0) { %>
<script language="javascript">
alert("This Emp ID already Exists");
</script>
<%
}
if(mod==1) { %>
<script language="javascript">
alert("Modified Successfully");

</script>
<%
}
con.commit();
stmt.close();
con.close();

}
catch(Exception e) { %>
<script language="javascript">
alert("Please Enter New Name");
document.location="employeeinfo.jsp";
</script>
<%
}

%>
</body>
</html>