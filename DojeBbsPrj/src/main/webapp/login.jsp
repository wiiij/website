<%@page import="DB.DBConnect"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="css/style.css?ver=5">
<title>min kyong suck</title>
</head>
<body>

<jsp:include page="header.jsp"></jsp:include>


<div class="bodyWrap">
<jsp:include page="nav.jsp"></jsp:include>	
	
	<section>
	<form action="loginP.jsp">
		<h3>id</h3>
		<input type = "text" class = "writeInput" name = "id" placeholder= "id">
		<h3>pw</h3>
		<input type = "password" class = "writeInput" name = "pw" placeholder= "pw">
		<br>
		<input type = "submit" value = "login">
	</form>
	</section>
</div>

<jsp:include page="footer.jsp"></jsp:include>


</body>
</html>








