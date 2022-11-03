<%@page import="java.sql.PreparedStatement"%>
<%@page import="DB.DBConnect"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	// int bno = ;           
	// String writer = request.getParameter("writer");
	// String title = request.getParameter("title");
	// String cont = request.getParameter("cont");
 	request.setCharacterEncoding("utf-8");
	
	Connection conn = DBConnect.getConnection();

	String sql = "insert into board values(?, ?, ?, ?, ?)";
	
	PreparedStatement pstmt = conn.prepareStatement(sql);

	pstmt.setString(1, request.getParameter("name"));
	pstmt.setString(2, request.getParameter("id"));
	pstmt.setString(3, request.getParameter("pw"));
	pstmt.setString(4, request.getParameter("tel"));
	pstmt.setString(4, request.getParameter("hobby"));
		
	pstmt.executeUpdate();
%>

<jsp:forward page = "index.jsp"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="css/style.css?ver=1">
<title>index.jsp</title>
</head>
<body>

<jsp:include page="header.jsp"/>

<div class="bodyWrap">
<jsp:include page="nav.jsp"/>
	
<section>
 <%=request.getParameter("bno")%>번째 글 등록이 완료되었습니다.
</section>
</div>

<jsp:include page="footer.jsp"/>
</body>
</html>