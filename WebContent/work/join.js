var exp=/^[0-9]{4}[0-9]{2}[0-9]{2}$/;
$(function(){
	//아이디 중복체크 창 띄우기
	$("#idBtn").click(function(){
		window.open("idCheck.wo","","width=500 height=500");
	});
	
	//회원가입폼 입력 오류메세지
	$("#send").click(function(){
		if($("#id").val()==""){
			alert("아이디를 입력하세요.");
			$("#id").focus();
			return false;
		}
		if($("#pwd").val()==""){
			alert("비밀번호를 입력하세요.");
			$("#pwd").focus();
			return false;
		}
		if($("#pwd").val()!=$("#pwdcheck").val()){
			alert("비밀번호가 일치하지 않습니다.");
			$("#pwdcheck").focus();
			return false;
		}
		if($("#name").val()==""){
			alert("이름을 입력하세요.");
			$("#name").focus();
			return false;
		}
		if($("#birth").val()==""){
			alert("생년월일을 입력하세요.");
			$("#birth").focus();
			return false;
		}
		if(!$("#birth").val().match(exp)){
			alert("생년월일 입력방식이 아닙니다.(yyyymmdd)");
			$("#birth").focus();
			return false;
		}
		if($("#gender").val()==""){
			alert("성별을 입력하세요.");
			return false;
		}
		if($("#subject").val()==""){
			alert("수강과목을 입력하세요.");
			return false;
		}
		if($("#code").val()==""){
			alert("코드를 입력하세요.");
			$("#code").focus();
			return false;
		}
		$("#frm").submit();
		
	})
});