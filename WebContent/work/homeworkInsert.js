var exp=/^[0-9]{4}[0-9]{2}[0-9]{2}$/;
$(function(){
	//입력오류메세지
	$("#submit").click(function(){
		if($("#title").val()==""){
			alert("제목을 입력하세요.");
			$("#title").focus();
			return false;
		}
		if($("#homework").val()==""){
			alert("제출기한을 입력하세요.");
			$("#homework").focus();
			return false;
		}
		if(!$("#homework").val().match(exp)){
			alert("제출기한을 입력방식이 아닙니다.(yyyymmdd)");
			$("#homework").focus();
			return false;
		}
		if($("#content").val()==""){
			alert("내용을 입력하세요.");
			$("#content").focus();
			return false;
		}		
		$.ajax({
			type : "post",
			data : {"title":$("#title").val(),
					"id" : $("#homeworkId").val(),
					"content":$("#content").val(),
					"day":$("#day").val(),
					"homework":$("#homework").val()
					},
			url : "homeworkInsert.wo",
			success : function(data){
				alert("등록되었습니다.");
				location.href="homework.jsp";
			}
		})
	})
});