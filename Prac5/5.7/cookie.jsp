<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
Cookie[] cookies = request.getCookies();
   if (cookies == null)
   cookies = new Cookie[0];
   String name = request.getParameter("name");
   Cookie added = null;
   if (name!=null && name.length()>0) {
   added = new Cookie(name,name);
   response.addCookie(added);
   added.setMaxAge(365*24*60*60);
  }
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cookie Details</title>
</head>
<body>
<%
   for (int i=0; i<cookies.length-1; i++) {
   out.println("Cookie Value Number :"+i+" and value "+cookies[i].getName());
   out.println("<br>");
   if (added!=null && added.getName().equals(cookies[i].getName()))
   added = null;
   }
   if (added != null)
   out.println("New Symbol: "+added.getName());
%>
<%
   if(cookies.length >=10)
  {
   int start=cookies.length-10;
   cookies[start].setMaxAge(0);
   response.addCookie(cookies[start]);
  }
   out.println("Length of cookie is "+cookies.length);
%>

<FORM>
Patel Payal  <br>   130050131545 <br>
<P>Get Cookie Value<INPUT TYPE='TEXT' NAME='name'></P>
<INPUT TYPE='SUBMIT' VALUE='Submit'>
</FORM>
</body>
</html>