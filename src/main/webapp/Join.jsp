<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resource/css/proj.css" />
<link rel="stylesheet" href="./resource/css/bootstrap.min.css" />
<!-- <script type="text/javascript" src="./resource/js/validation_member.js"></script> -->
<script type="text/javascript" src="./resource/js/fn_IdCheck.js"></script>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
<script>
function CheckAddMember() {
	
	var joinForm = document.addMember;
	var id = joinForm.id.value;
	var id2 = joinForm.id;
	var pwd = joinForm.pwd.value;
	var pwd_confirm = joinForm.pwd_confirm.value;
	var name = joinForm.name.value;
	var email1 = joinForm.email1.value;
	var phone = joinForm.phone.value;
	
	
	// 아이디 체크
	if (id.length == 0 || id == "") {
		alert("[ID]\n 아이디를 입력해주세요");
		id.select();
		id.focus();
		return false;
	}
	// 아이디 중복체크 안할 시
	/*$('input').attr('readonly') == 'readonly'*/
	if ($('#idCheckTest').attr('readonly') != 'readonly') {
		alert("[중복확인]\n 아이디 중복체크해주세요");
		id.select();
		id.focus();
		return false;
	}
	
	// 비밀번호 체크
	if (pwd.length == 0 || pwd == "") {
		alert("[PASSWORD]\n 비밀번호를 입력해주세요");
		pwd.select();
		pwd.focus();
		return false;
	}
	// 비밀번호 확인체크
	if (pwd_confirm != pwd) {
		alert("[PASSWORD확인]\n 비밀번호가 맞지 않습니다.");
		pwd_confirm.select();
		pwd_confirm.focus();
		return false;
	}
	
	// 성명 체크
	if (name.length == 0 || name == "") {
		alert("[NAME]\n 이름를 입력해주세요");
		name.select();
		name.focus();
		return false;
	}
	// 이메일 앞자리 체크
	if (email1.length == 0 || email1 == "") {
		alert("[EMAIL]\n 이메일을 입력해주세요");
		email1.select();
		email1.focus();
		return false;
	}

		
	function check(regExp, e, msg) {

		if (regExp.test(e.value)) {
			return true;
		}
		alert(msg);
		e.select();
		e.focus();
		return false;
	}

	 document.addMember.submit()
}
</script>
	<%@ include file="Header.jsp"%>

	<div class="join_sec">
		<h3 class="join_info">Fitness Ground</h3>
		<BR>
		<BR>
		<BR>
		<div class="join_form">
			<form name = "addMember"class="form-signin" action="MemberJoinAction.do" method="post">
				<div class="form-group  row">
					<span>아이디 *
						<input type="button" class="btn btn-success" onclick="windowOpen()" value = "중복확인">
					</span> <BR>
					<BR> <input id="idCheckTest" name="id" type="text" class="form-control"
						placeholder="아이디">
				</div>
				<div class="form-group  row">
					<span>비밀번호 *</span> <input name="pwd" type="password"
						class="form-control" placeholder="비밀번호">

				</div>
				<div class="form-group  row">
					<span>비밀번호확인 *</span> <input name="pwd_confirm" type="password"
						class="form-control" placeholder="비밀번호 확인">

				</div>
				<div class="form-group  row">
					<span>성명 *</span> <input name="name" type="text"
						class="form-control" placeholder="name">

				</div>
				<div class="form-group  row">
					<span>성별 *</span>
					<div class="col-sm-10">
						<input name="gender" type="radio" value="남" checked /> 남
						<input name="gender" type="radio" value="여" /> 여
					</div>
				</div>

				<div class="form-group  row ">
					<span>이메일 *
					</span> <BR>
					<BR>
					<div class="col-sm-10">
						<input type="text" name="email1" maxlength="50"
							class="form-control">@ <select class="form-control"
							name="email2">
							<option>naver.com</option>
							<option>daum.net</option>
							<option>gmail.com</option>
							<option>nate.com</option>
						</select>
						
					</div>
				</div>
				<div class="form-group  row">
					<span>전화번호 (010 포함 '-' 빼고 입력)</span> <input name="phone" type="text"
						class="form-control" placeholder="예시)01012341234">
				</div>
				<span> <span style = "font-weight : bold;">*</span> 항목은 필수 입력항목입니다.</span><br><br>
				<div class="form-group  row">
					<div class="col-sm-offset-2 col-sm-10 ">
						<input type="button" class="btn btn-primary " value="등록 " onclick="CheckAddMember()">
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