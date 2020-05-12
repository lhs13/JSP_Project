$(function(){
	$("#update").click(function(){
		if(confirm("정말 수정하시겠습니까?")){
			$("#updateform").submit();
		}
	})
	
	$("#del").click(function(){
		if(confirm("정말 삭제하시겠습니까?")){
			location.href="delete.wo?num="+$("#num").val();
		}
	})
})