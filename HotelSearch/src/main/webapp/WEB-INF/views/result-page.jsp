<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="/style.css" />
<link href="https://stackpath.bootstrapcdn.com/bootswatch/4.3.1/spacelab/bootstrap.min.css" />
</head>
<body>
	<fieldset>
		<legend>Hotel Result</legend>
		
		<h1> ${city } Hotels</h1>
		<div class="container">
		<table class="padding-table-columns">
		<tr>
				<th>Hotel Name</th>
				<th>City</th>
				<th>Price Per Night</th>
				
		</tr>
		<c:forEach items="${list}" var="list">
		<tr>
		
			<td>${list.name}</td>
			<td>${list.city}</td>
			<td> $${list.pricePerNight}</td>
		
		</tr>
		</c:forEach>
		</table>
		</div>
	</fieldset>
		<a class="btn btn-outline-info" href="/">Start New Search</a>

</body>
</html>