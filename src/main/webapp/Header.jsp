<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	// 로그인 후 세션으로 등록된 아이디를 가져오는 알고리즘. 
	String sessionId = (String) session.getAttribute("sessionId");
%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resource/css/proj.css" />
<link rel="stylesheet" href="./resource/css/bootstrap.min.css" />
</head>
<body>

	<div class="header">
		<nav class="navbar navbar-expand">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item"><a class="nav-link" href="Index.jsp">Home </a></li>
				<li class="nav-item"><a class="nav-link" href="#">센터 소개</a></li>
				<li class="nav-item"><a class="nav-link" href="#">시설 소개</a></li>
				<li class="nav-item"><a class="nav-link" href="#">프로그램 안내</a></li>
				<li class="nav-item"><a class="nav-link" href="#">바디프로필</a></li>
			</ul>

			<div>
			<c:choose>
					<c:when test="${empty sessionId}">
						<a href="Login.jsp">로그인</a> || <a href="Join.jsp">회원가입</a>
					</c:when>
					<c:otherwise>
						<span style="padding-top: 7px;">[<%=sessionId%>님]</span>
						<a href="UpdateMember.jsp">회원정보수정</a> || <a href="logout.jsp">로그아웃</a>
					</c:otherwise>
				</c:choose>
				
			</div>
		</nav>
	</div>

</body>
</html>