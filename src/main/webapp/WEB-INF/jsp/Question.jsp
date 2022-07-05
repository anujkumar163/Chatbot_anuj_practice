<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://www.w3schools.com/lib/w3.js"></script>
</head>
<body>
	<form action="getans" method="get">
	Question:-
	<input type="text" >
	Answer:-
	<input type="text"  placeholder="answer will be show here">
	</form><br>
	
	
	<form action="save" method="post">
	Question:-
	<input type="text" name="question">
	Answer:-
	<input type="text" name="answer">
	<input type="submit" value="save">
	</form>
</body>
</html>	
	
	
