<%@page import="DB.DBConnect"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	Connection conn = DBConnect.getConnection();
	Statement stmt = conn.createStatement();
	
	String sql = "select * from board";
	ResultSet rs = stmt.executeQuery(sql);
  // 클래스    ㄴ 인스턴스(객체)
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css"
 href="css/style.css?ver=6">
<title>list.jsp</title>
<script type="text/javascript">
    	function del(deleteBno) {
    		if(!confirm("진심 삭제하시겟슴미까")) {
    			alert("조은생강이시네요.");
    			return;
    		}	else {
    			location.href='delete.jsp?bno='+deleteBno;
    			alert("삭제댐 ㅅㄱ")
    		}
    	}
    	
    	</script>
    
    
</head>
<body>

<jsp:include page="header.jsp"/>

<div class="bodyWrap">
<jsp:include page="nav.jsp"/>
	
<section>
<h2>글 목록</h2>
<table>
  <tr>
    <th>글번호</th>
    <th>작성자</th>
    <th>제목</th>
    <th>내용</th>
    <th>글쓴시간</th>
    <th colspan="2">수정/삭제</th>
  </tr>
  
  <% while(rs.next()){ 
  	int deleteBno = rs.getInt("bno");
  %>
  <tr>
    <td><%=rs.getInt("bno")%></td>
    <td><%=rs.getString("writer")%></td>
    <td><%=rs.getString("title")%></td>
    <td><%=rs.getString("cont")%></td>
    <td><%=rs.getString("wdate")%></td>
    <td><input class="sb" type="button" value="수정"
     			onclick="location.href='update.jsp?bno=<%=rs.getInt("bno")%>'"></td>
    <td><input class="sb" type="button" value="삭제" onclick ="del(deleteBno)"></td>
  </tr>
  <% } %>
</table>
</section>
</div>

<jsp:include page="footer.jsp"/>
</body>
</html>



