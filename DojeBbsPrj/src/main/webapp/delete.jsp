<%@page import="java.sql.PreparedStatement"%>
<%@page import="DB.DBConnect"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%

 	request.setCharacterEncoding("utf-8");
	
	Connection conn = DBConnect.getConnection();

	String sql = "delete from board where bno=?";
				
	
	PreparedStatement pstmt = conn.prepareStatement(sql);

	pstmt.setInt(1, Integer.parseInt(request.getParameter("bno")));
	
		
	pstmt.executeUpdate();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="css/style.css?ver=1">
<title>index.jsp</title>
</head>
<body>

</body>
</html>