<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="css/style.css?ver=5">
<title>Insert title here</title>
</head>
<body>



<nav>
		<ul>
		  <li><a href="list.jsp">글목록</a></li>
		  <li><a href="write.jsp">글쓰기</a></li>
		  <li><a href="join.jsp">회원가입</a></li>
		  <li><a href="">홈으로</a></li>
		  
		  <% if(session.getAttribute("id") == null){ %>
		  <li><a href="login.jsp">로그인</a></li>
		  <li><a href="join.jsp">회원가입</a></li>
		  <% } else {%>
		  <li><a href="logout.jsp">로그아웃</a></li>
		  <li><a href="updateM.jsp">회원정보수정</a></li>
		  <% } %>
		  
		</ul>
	</nav>
</body>
</html>