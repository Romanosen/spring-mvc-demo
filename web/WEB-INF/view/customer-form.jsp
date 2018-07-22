<%--
  Created by IntelliJ IDEA.
  User: roman
  Date: 22.07.18
  Time: 15:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <title>Customer registration form</title>
    <style>
        .error{color: red}
    </style>

</head>
<body>

<i>Fill out the form. Asterisk(*) means required</i>
<form:form action="processForm" modelAttribute="customer">
First name <form:input path="firstName"/>

    <br>
Last name(*) <form:input path="lastName"/>
<form:errors path="lastName" cssClass="error"/>

    <br>
FreePasses(*) <form:input path="freePass"/>
<form:errors path="freePass" cssClass="error"/>

    <br>
PostalCode <form:input path="postalCode"/>
<form:errors path="postalCode" cssClass="error"/>

    <br>
<input type="submit" value="Submit"/>
</form:form>



</body>
</html>
