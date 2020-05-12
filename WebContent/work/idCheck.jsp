<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>아이디 중복체크</title>
    <link rel="stylesheet" href="/WorkProject/css/idCheck.css">
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script>
    $(function(){
    	$("#idCheckBtn").click(function(){
    		if($("#idck").val()==""){
    			alert("아이디를 입력하세요.");
    			$("#idck").focus();
    			return false;
    		}
    		$.ajax({
    			type:"post",
    			url:"idCheck.wo",
    			data:{"idck":$("#idck").val()},
    			success:function(data){
    				if(data.trim()=="yes"){
    					alert("사용가능한 아이디입니다.");
    					$(opener.document).find("#id").val($("#idck").val());
    					$(opener.document).find("#uid").val($("#idck").val());
    					self.close();
    				}else{
    					alert("이미 사용중인 아이디입니다. (사용불가)");
    				}
    			},
    			error:function(e){
    				alert("error:"+e);
    			}
    		})
    	})
    })
    	
    </script>
</head>
<body>
   <div class="login">
       <div class="center"><h3>아이디 중복체크</h3></div>
       <hr>
       <br>
       <div class="insert">
           <b>아이디</b> <br><input type="text" name="idck" id="idck" placeholder="사용할 아이디를 입력하세요."><br><br>
           <input type="button" value="사용" id="idCheckBtn">
       </div>
   </div>
    
</body>
</html>