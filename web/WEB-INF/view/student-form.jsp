<%--
  Created by IntelliJ IDEA.
  User: roman
  Date: 21.07.18
  Time: 13:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=utf-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <title>Student registration form</title>
</head>
<body>

<form:form action="processForm" modelAttribute="student">

    First name <form:input path="firstName"/>
    Last name <form:input path="lastName"/>

    <br><br>
    <br><br>
    County:
    <form:select path="country">
        <form:options items="${student.countryOptions}"/>

    </form:select>
    
    <br><br>
    Favourite Language:

   Java <form:radiobutton path="favoriteLanguage" value="Java"/>
   C#<form:radiobutton path="favoriteLanguage" value="C#"/>
    PHP<form:radiobutton path="favoriteLanguage" value="PHP"/>
   Ruby <form:radiobutton path="favoriteLanguage" value="Ruby"/>
    <br>



    <br>
    Operating Systems
    Linux <form:checkbox path="operatingSystems" value="Linux"/>
    MacOS <form:checkbox path="operatingSystems" value="MacOS"/>
    Windows <form:checkbox path="operatingSystems" value="Windows"/>


    <input type="submit" value="Submit"/>
</form:form>





</body>
</html>
