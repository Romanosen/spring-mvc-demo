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
    <title>Customer confirmation </title>
</head>
<body>

The customer is confirmed: ${customer.firstName} ${customer.lastName}
<br>
Free passes: ${customer.freePass}
<br>
Postal code: ${customer.postalCode}
</body>
</html>
