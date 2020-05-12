var exp=/^[0-9]{4}[0-9]{2}[0-9]{2}$/;
$(function(){
	//입력오류메세지
	$("#update").click(function(){
		if($("#pwd").val()==""){
			alert("비밀번호가 입력되지 않았습니다.");
			$("#pwd").focus();
			return false;
		}
		if($("#name").val()==""){
			alert("이름이 입력되지 않았습니다.");
			$("#name").focus();
			return false;
		}
		if($("#birth").val()==""){
			alert("생년월일이 입력되지 않았습니다.");
			$("#birth").focus();
			return false;
		}
		if(!$("#birth").val().match(exp)){
			alert("생년월일 입력방식이 아닙니다.(yyyymmdd)");
			$("#birth").focus();
			return false;
		}
		if($("input:radio[name=gender]:checked").length==0){
			alert("성별이 입력되지 않았습니다.");
			$("#gender").focus();
			return false;
		}
		if($("input:checkbox[name=subject]:checked").length==0){
			alert("수강과목(담당과목)이 입력되지 않았습니다.");
			$("#subject").focus();
			return false;
		}
		$("#frm").submit();
		/*function update(){
			
		}*/
	})
});