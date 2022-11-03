<%@page import="java.sql.PreparedStatement"%>
<%@page import="DB.DBConnect"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	request.setCharacterEncoding("utf-8");
	

	Connection conn = DBConnect.getConnection();
	String sql = "select * from member where id =? and pw=?";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	
	pstmt.setString(1, request.getParameter("id"));
	pstmt.setString(2, request.getParameter("pw"));
	
	
	ResultSet rs = pstmt.executeQuery(sql);
  
	if(rs.next()) {
		session.setAttribute("id,", rs.getString(2));
		%>
		alert("로그인 되었습니다");
		<jsp:forward page = "index.jsp"/>
	<% 	
	}
%>
