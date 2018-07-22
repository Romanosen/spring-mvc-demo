<%--
  Created by IntelliJ IDEA.
  User: roman
  Date: 21.07.18
  Time: 13:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=utf-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Student confirmation page</title>
</head>
<body>

The student is confirmed: ${student.firstName} ${student.lastName}
<br>
Country: ${student.country}

<br>
Favourite Language: ${student.favoriteLanguage}

<br>

Operating systems
<ul>
    <c:forEach var="temp" items="${student.operatingSystems}">
    <li>${temp} </li>
    </c:forEach>
</ul>
</body>
</html>
