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
<title>join.jsp</title>
</head>
<body>
<jsp:include page="header.jsp"/>

<div class="bodyWrap">
<jsp:include page="nav.jsp"/>
	
<section>
<h2>회원가입</h2>
<form name="joinFrm" action="joinP.jsp" method="get" onsubmit="return jTest()">
	<div class="writeForm">
		<p class="writeTitle">id</p>
		<input type="text" name="id" class="writeInput" placeholder="id">
		<br>
		<p class="writeTitle">pw</p>
		<input type="password" name="pw" class="writeInput" placeholder="pw">
		<br>
		<p class="writeTitle">pwR</p>
		<input type="password" name="pwR" class="writeInput" placeholder="pwR">
		<br>
		<p class="writeTitle">name</p>
		<input type="text" name="name" class="writeInput" placeholder="name">
		<br>
		<p class="writeTitle">tel</p>
		<input type="text" name="tel" class="writeInput" placeholder="tel">
		<br>
		<p class="writeTitle">hobby</p>
			<input id="ta" name="chim" class="writeInput" placeholder="chim"></input>
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
	function jTest(){
		if(!document.joinFrm.id.value){		
			alert("id를 입력하세요.");
			joinFrm.id.focus();
			!document.joinFrm.reset();
			return false;
		} else if(!document.joinFrm.pw.value){
			alert("pw를 입력하세요.");
			joinFrm.pw.focus();
			return false;
		} else if(!document.joinFrm.pwR.value){
			alert("pwR을 입력하세요");
			joinFrm.pwR.focus();
			return false;
		} else if(!document.joinFrm.pw.value != document.joinFrm.pwR.value){
			alert("pw와 pwR이 불일치");
			joinFrm.pwR.focus();
			return false;
		} else if(!document.joinFrm.tel.value){
			alert("tel을 입력하세요");
			joinFrm.tel.focus();
			return false;
		} else if(!document.joinFrm.name.value){
			alert("name을 입력하세요");
			joinFrm.name.focus();
			return false;
		} else if(!document.joinFrm.chim.value){
			alert("chim을 입력하세요");
			joinFrm.chim.focus();
			return false;
		}
		alert("글 쓰기가 완료되었습니다.");
		return true;		
	}
</script>
</body>
</html>




