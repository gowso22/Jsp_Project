<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resource/css/proj.css" />
<link rel="stylesheet" href="./resource/css/bootstrap.min.css" />
</head>
<body>

	<%@ include file="Header.jsp"%>

	<div class="login_sec">
		<h3 class="log_info">반갑습니다. AAAAAAA BBBBBB입니다.</h3>
		<div class=log_form>
			<form class="form-signin" action="#" method="post">
				<div class="form-group">
					<label for="inputUserName" class="sr-only">User Name</label> <input
						type="text" class="form-control" placeholder="아이디를 입력해주세요"
						name='id' required autofocus>
				</div>
				<div class="form-group">
					<label for="inputPassword" class="sr-only">Password</label> <input
						type="password" class="form-control" placeholder="비밀번호를 입력해주세요"
						name='pwd' required>
				</div>
				<button class="btn btn btn-lg btn-success btn-block" type="submit">로그인</button>
			</form>
			<div class="mem_search">
				<a href="#">아이디 찾기</a> || <a href="#">비밀번호 찾기</a> || <a href="Join.jsp">회원
					가입</a>
			</div>
		</div>
	</div>


	<%@ include file="Footer.jsp"%>

</body>
</html>