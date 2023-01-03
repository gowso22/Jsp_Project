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

	<div class="join_sec">
		<h3 class="join_info">Fitness Ground</h3>
		<BR><BR><BR>
		<div class="join_form">
			<form class="form-signin" action="#" method="post">
				<div class="form-group  row">
					<span>아이디 *  <button class="btn btn-success">ID중복</button> </span> <BR><BR>
					<input name="id" type="text" class="form-control" placeholder="id">
				</div>
				<div class="form-group  row">
					<span>비밀번호 *</span> <input name="password" type="text"
						class="form-control" placeholder="password">

				</div>
				<div class="form-group  row">
					<span>비밀번호확인 *</span> <input name="password_confirm" type="text"
						class="form-control" placeholder="password confirm">

				</div>
				<div class="form-group  row">
					<span>성명 *</span>
					
						<input name="name" type="text" class="form-control"
							placeholder="name">
					
				</div>
				<div class="form-group  row">
					<span>성별 *</span>
					<div class="col-sm-10">
						<input name="gender" type="radio" value="남" checked/> 남 <input
							name="gender" type="radio" value="여" /> 여
					</div>
				</div>
				
				<div class="form-group  row ">
					<span>이메일 *  <button class="btn btn-success">이메일 인증</button> </span> <BR><BR>
					<div class="col-sm-10">
						<input type="text" name="mail1" maxlength="50"  class="form-control">@
						 <select class="form-control"
							name="mail2">
							<option>naver.com</option>
							<option>daum.net</option>
							<option>gmail.com</option>
							<option>nate.com</option>
						</select>
					</div>
				</div>
				<div class="form-group  row">
					<span>전화번호 </span>
					
						<input name="phone" type="text" class="form-control"
							placeholder="phone">

					
				</div>
				
				<div class="form-group  row">
					<div class="col-sm-offset-2 col-sm-10 ">
						<input type="submit" class="btn btn-primary " value="등록 ">
						<input type="reset" class="btn btn-primary " value="취소 "
							onclick="reset()">
					</div>
				</div>
			</form>
		</div>
	</div>


	<%@ include file="Footer.jsp"%>
</body>
</html>