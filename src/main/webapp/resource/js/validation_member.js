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
	if ($('#idCheckTest').attr('readOnly') != 'readOnly') {
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
