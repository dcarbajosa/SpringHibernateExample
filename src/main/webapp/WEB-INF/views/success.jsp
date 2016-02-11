<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<spring:url value="/resources/css/space-theme.css" var="themeCSS" />
<spring:url value="/resources/images/space-theme" var="themeImg" />
<link rel="stylesheet" href="${themeCSS}" />
<title>Registration Confirmation Page</title>
</head>
<body class="body">
	<div class="container">
		<img src="${themeImg}/banner.gif" />
		<br/>
		<span class="title">message</span>
		<br/>
		<span class="title">${success}</span>
		<br/>
		<br/>
		Go back to <a href="<c:url value='/list' />">List of All Employees</a>
	</div>	
</body>

</html>