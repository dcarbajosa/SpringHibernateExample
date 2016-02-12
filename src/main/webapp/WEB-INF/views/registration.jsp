<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<spring:url value="/resources/css/space-theme.css" var="themeCSS" />
	<spring:url value="/resources/images/space-theme" var="themeImg" />
	<link rel="stylesheet" href="${themeCSS}" />
	<title>Employee Registration Form</title>
</head>

<body class="body">
	<div class="container">
		<img src="${themeImg}/banner1.jpg" />
		<br/>
		<div class="title">
			<span class="title">Registration Form</span>
	 	</div>
	 	<a href="<c:url value='/list' />"><img class="titlebutton" src="${themeImg}/back-button.png" /></a>	
		<form:form method="POST" modelAttribute="employee">
			<form:input type="hidden" path="id" id="id"/>
			<table class="emptable">
				<tr>
					<td><label for="name">Name: </label> </td>
					<td><form:input path="name" id="name"/></td>
					<td><form:errors path="name" cssClass="error"/></td>
			    </tr>
		    
				<tr>
					<td><label for="joiningDate">Joining Date: </label> </td>
					<td><form:input path="joiningDate" id="joiningDate"/></td>
					<td><form:errors path="joiningDate" cssClass="error"/></td>
			    </tr>
		
				<tr>
					<td><label for="salary">Salary: </label> </td>
					<td><form:input path="salary" id="salary"/></td>
					<td><form:errors path="salary" cssClass="error"/></td>
			    </tr>
		
				<tr>
					<td><label for="ssn">SSN: </label> </td>
					<td><form:input path="ssn" id="ssn"/></td>
					<td><form:errors path="ssn" cssClass="error"/></td>
			    </tr>
		
				<tr>
					<td colspan="3">
						<c:choose>
							<c:when test="${edit}">
								<input type="submit" value="Update"/>
							</c:when>
							<c:otherwise>
								<input type="submit" value="Register"/>
							</c:otherwise>
						</c:choose>
					</td>
				</tr>
			</table>
		</form:form>
		<br/>
		<br/>
	</div>
</body>
</html>