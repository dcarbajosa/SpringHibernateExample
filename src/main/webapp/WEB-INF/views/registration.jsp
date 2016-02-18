<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<!--
	<spring:url value="/resources/css/space-theme.css" var="themeCSS" />
	<spring:url value="/resources/images/space-theme" var="themeImg" />
	-->
	<spring:url value="/resources/css/pet-theme.css" var="themeCSS" />
	<spring:url value="/resources/images/pet-theme" var="themeImg" />
	<link rel="stylesheet" href="${themeCSS}" />
	<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Open+Sans"/>
	<title>Employee Registration Form</title>
</head>

<body class="body">
	<div class="container">
		<img src="${themeImg}/banner1.jpg" />
		<br/>
		<div class="titlecontainer">
			<span class="title">Registration Form</span>
	 		<a href="<c:url value='/list' />"><img class="titlebutton" src="${themeImg}/back-button.png" /></a>
	 	</div>
	 	<form:form method="POST" modelAttribute="employee">
			<form:input type="hidden" path="id" id="id"/>
			<table class="emptable" cellspacing="0" cellpadding="0">
				<tr>
					<td width="30%" class="rightcells"><label for="name">Name: </label> </td>
					<td width="30%" class="rightcells"><form:input width="100%" path="name" id="name"/></td>
					<td width="40%"><form:errors path="name" cssClass="error"/></td>
			    </tr>
		    
				<tr>
					<td width="30%" class="rightcells"><label for="joiningDate">Joining Date: </label> </td>
					<td width="30%" class="rightcells"><form:input width="100%" path="joiningDate" id="joiningDate"/></td>
					<td width="40%" ><form:errors path="joiningDate" cssClass="error"/></td>
			    </tr>
		
				<tr>
					<td width="30%" class="rightcells"><label for="salary">Salary: </label> </td>
					<td width="30%"class="rightcells"><form:input width="100%" path="salary" id="salary"/></td>
					<td width="40%"><form:errors path="salary" cssClass="error"/></td>
			    </tr>
		
				<tr>
					<td width="30%" class="rightcells"><label for="ssn">SSN: </label> </td>
					<td width="30%" class="rightcells"><form:input width="100%" path="ssn" id="ssn"/></td>
					<td width="40%"><form:errors path="ssn" cssClass="error"/></td>
			    </tr>
		
				<tr>
					<td width="30%"></td>
					<td width="30%" class="rightcells" cellspacing="1" cellpadding="1">
						<c:choose>
							<c:when test="${edit}">
								<input type="submit" value="Update"/>
							</c:when>
							<c:otherwise>
								<input type="submit" value="Register"/>
							</c:otherwise>
						</c:choose>
					</td>
					<td width="40%"></td>
				</tr>
			</table>
		</form:form>
	</div>
	<div class="titlecontainer">
		<span class="footer">The Moon Corporation &copy; 2026</span>
	</div>
</body>
</html>