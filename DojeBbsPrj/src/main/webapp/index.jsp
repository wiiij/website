<%@page import="DB.DBConnect"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	Connection conn = DBConnect.getConnection();

	Statement stmt = conn.createStatement();
	
	String sql = "select * from tab";
	ResultSet rs = stmt.executeQuery(sql);
%>

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
	
	</section>
</div>

<jsp:include page="footer.jsp"></jsp:include>


</body>
</html>








