
function isWordCheck(word) {
    var root = ["root"];
    var pattern = new RegExp(root.join("|"), "i"); //i를 넣어서 영문 대소문자도 구분하게 합니다.
    var bCheck = pattern.test(word); //test() 메소드를 사용하여 지정한 패턴이 대상 문자열에 있는지를 검사
    if (bCheck) {
        alert("root계정은 사용할 수 없습니다..");
        document.frm.id.focus();
        return;
    }
}
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