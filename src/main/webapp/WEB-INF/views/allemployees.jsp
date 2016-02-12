<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
	<spring:url value="/resources/css/space-theme.css" var="themeCSS" />
	<spring:url value="/resources/images/space-theme" var="themeImg" />
	<link rel="stylesheet" href="${themeCSS}" />
	<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Open+Sans">
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>University Enrollments</title>

	<style>
		
	</style>

</head>


<body>
	<div class="container">
		<img src="${themeImg}/banner1.jpg" />
		<br/>
		<div class="title">
			<span class="title">List of Employees</span>
		</div>
		<a href="<c:url value='/new' />"><img class="titlebutton" src="${themeImg}/add-button.png" /></a>	
		<table class="emptable">
			<tr class="tableheader">
				<td>Name</td>
				<td>Joining Date</td>
				<td>Salary</td>
				<td>SSN</td>
				<td></td>
			</tr>
			<c:forEach items="${employees}" var="employee">
				<tr>
				<td>${employee.name}</td>
				<td>${employee.joiningDate}</td>
				<td>${employee.salary}</td>
				<td>${employee.ssn}</td>
				<td style="align: right;"><a href="<c:url value='/edit-${employee.ssn}-employee' />"><img class="tablebutton" src="${themeImg}/edit-button.png" /></a>
				<a href="<c:url value='/delete-${employee.ssn}-employee' />"><img class="tablebutton" src="${themeImg}/delete-button.png" /></a>
				</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<span class="title">The Moon Corporation &copy; 2026</span>
</body>
</html>