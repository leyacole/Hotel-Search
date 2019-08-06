<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="/style.css" />
</head>
<body>
<form action="/" method="get" ></form>
<div class="dropdown">
	<h1><strong>Hotel Search</strong></h1>
	<fieldset>
		<legend>Hotel Search</legend>
		<p>
			<label>City</label>
			<form action="/result" method= GET >
			<select name = "city">
				<option value= "Detroit"}>Detroit</option>
				<option value= "Chicago">Chicago</option>
				<option value= "New York">New York</option>
			</select>
		<p>
		<button type="submit">Go!</button>
		
		</p>
		</form>
	</fieldset>
</div>
</body>
</html>