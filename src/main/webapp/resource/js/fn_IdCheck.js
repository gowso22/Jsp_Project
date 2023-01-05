function windowOpen(){
	//새창을 열어서 페이지를 오픈 후 -> 회원아이디정보를 가지고 중복체크
	//1. 아이디가 없으면 알림창과 진행x
	if(document.addMember.id.value =="" || document.addMember.id.value.length == 0){
		alert("[중복확인] 아이디를 먼저 입력해주세요")
		document.addMember.id.focus();
	}else{
		//2. 회원정보아이디를 가지고 있는 지 체크하려면 DB에 접근해야한다.
		//자바스크립트로 어떻게 DB에 접근할까? => 파라미터로 id값을 가져가서 jsp페이지에서 진행하면 된다.
		window.open("IdCheck.jsp?userid="+document.addMember.id.value,"","width=500, height=300");
	}
}