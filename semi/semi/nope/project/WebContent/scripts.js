function inputCheck() {
	if(document.frm.id.value==""){
		alert("아이디를 입력해 주세요.");
		document.frm.id.focus();
		return;
	}
	
	if(document.frm.password.value==""){
		alert("비밀번호를 입력해 주세요.");
		document.frm.password.focus();
		return;
	}
	
	if(document.frm.password_ck.value==""){
		alert("비밀번호 확인을 입력해 주세요.");
		document.frm.password_ck.focus();
		return;
	}
	
	if(document.frm.name.value==""){
		alert("이름을 입력해 주세요.");
		document.frm.name.focus();
		return;
	}
	
	if(document.frm.birth.value==""){
		alert("생일을 입력해 주세요.");
		document.frm.birth.focus();
		return;
	}
	
	if(document.frm.phonenum.value==""){
		alert("전화번호를 입력해 주세요.");
		document.frm.phonenum.focus();
		return;
	}
	
	if(document.frm.email.value==""){
		alert("이메일을 입력해 주세요.");
		document.frm.email.focus();
		return;
	}
	
	if(document.frm.password.value != document.frm.password_ck.value){
		alert("비밀번호가 일치하지 않습니다.");
		document.frm.password_ck.value="";
		document.frm.password_ck.focus();
		return;
	}
	
	document.frm.submit();
}