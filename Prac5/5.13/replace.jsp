<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
<title>Using JSTL Functions</title>
</head>
<body>
 <h3>Enrollment no:130050131545</h3>

<c:set var="string1" value="This is first String."/>
<c:set var="string2" value="${fn:replace(string1, 'first', 'second')}" />
<p>Final String : ${string2}</p>

</body>
</html>