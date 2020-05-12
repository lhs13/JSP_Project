$(function(){
	getData(1,"","");
})
function getData(pageNum, field, word){
	$.ajax({
		type:"post",
		url:"homeworkView.wo",
		data:{"pageNum":pageNum,"field":field,"word":word},
		success:function(data){
			$("#sarea").html(data);
		},error:function(e){
			alert(e);
		}
	})
		
}