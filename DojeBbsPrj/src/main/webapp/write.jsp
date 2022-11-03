<%@page import="DB.DBConnect"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	Connection conn = DBConnect.getConnection();
	Statement stmt = conn.createStatement();
	
	String sql = "select max(bno) from BOARD";
	ResultSet rs = stmt.executeQuery(sql);
  // 클래스    ㄴ 인스턴스(객체)
  	rs.next();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="css/style.css?ver=134">
<title>list.jsp</title>
</head>
<body>
<jsp:include page="header.jsp"/>

<div class="bodyWrap">
<jsp:include page="nav.jsp"/>
	
<section>
<h2>게시판 글쓰기</h2>
<form name="대영이" action="writeP.jsp" method="get" onsubmit="return test()">
	<div class="writeForm">
		<p class="writeTitle">글번호</p>
		<input type="text" name="bno" class="writeInput" value="<%=rs.getInt(1)+1%>" readonly>
		<br>
		<p class="writeTitle">작성자</p>
		<input type="text" name="writer" class="writeInput" placeholder="작성자를 입력하세요.">
		<br>
		<p class="writeTitle">제목</p>
		<input type="text" name="title" class="writeInput" placeholder="제목을 입력하세요.">
		<br>
		<p class="writeTitle">내용</p>
			<textarea id="ta" name="cont" class="writeInput" placeholder="내용를 입력하세요."></textarea>
		<br>
		<br>
		<p class="writeTitle">
			<input class="sb" type="submit" value="글쓰기">
		</p>
	</div>
</form>
</section>
</div>

<jsp:include page="footer.jsp"/>

<script type="text/javascript">
	function test(){
		if(!document.대영이.writer.value){		
		// 작성자를 입력했냐?
		// <input type="text" name="writer" class="writeInput" placeholder="작성자를 입력하세요.">
			alert("작성자를 입력하세요.");
			대영이.writer.focus();
			return false;
		} else if(!document.대영이.title.value){
			// 제목을 입력했냐?
			// <input type="text" name="title" class="writeInput" placeholder="제목을 입력하세요.">
			alert("제목을 입력하세요.");
			대영이.title.focus();
			return false;
		} else if(!document.대영이.cont.value){
			// 내용을 입력했냐?
			// <textarea id="ta" name="cont" class="writeInput" placeholder="내용를 입력하세요."></textarea>
			alert("내용을 입력하세요.");
			대영이.cont.focus();
			return false;
		}
		alert("글 쓰기가 완료되었습니다.");
		return true;		
	}
</script>
</body>
</html>




