<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<spring:url value="/resources/css/pet-theme.css" var="themeCSS" />
<spring:url value="/resources/images/pet-theme" var="themeImg" />
<link rel="stylesheet" href="${themeCSS}" />
<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Open+Sans"/>
<title>Registration Confirmation Page</title>
</head>
<body class="body">
	<div class="container">
		<img src="${themeImg}/banner1.jpg" />
		<br/>
		<div class="titlecontainer">
			<span class="title">Message</span>
			<a href="<c:url value='/list' />"><img class="titlebutton" src="${themeImg}/back-button.png" /></a>
		</div>
		<br/>
		<div class="successtext">
		<span class="successtext">${success}</span>
		</div>
		<br/>
		<br/>
	</div>	
	<div class="titlecontainer">
		<span class="footer">The Moon Corporation &copy; 2026</span>
	</div>
</body>

</html>