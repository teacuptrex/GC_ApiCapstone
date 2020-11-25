<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Recipe Home</title>
</head>
<body>

<h1>Welcome, User!</h1>

<h2><a href="/favorites">Recipe Book</a></h2>

<h2>Recipe Search</h2>

<form method="post" action="/search/${ q }">

Text Search: <input type="text" name="q" />

<input type="submit" />
</form><br /><br />


<form method="post" action="/search/dishtype/${ dishtype }" >

Search by Dish Type: 
<select name="dishoptions">
	<c:forEach var="dishtype" items="${ dishtypes }">
		<option value="${ dishtype }">${ dishtype }</option>
	</c:forEach>
</select>
<input type="submit" />
</form><br /><br />

<form method="post" action="/search/cuisinetype/${ cuisinetype }" >

Search by Cuisine Type: 
<select name="cuisineoptions">
	<c:forEach var="dishtype" items="${ cuisinetypes }">
		<option value="${ cuisinetype }">${ cuisinetype }</option>
	</c:forEach>
</select>
<input type="submit" />
</form><br /><br />

<form method="post" action="/search/calories/${ low }/${ high }" >

Search by Calorie Range: 
Low: <input type="number" min=0 name="low" /> High: <input type="number" min=0 name="high" />


<input type="submit" />
</form><br /><br />



</body>
</html>