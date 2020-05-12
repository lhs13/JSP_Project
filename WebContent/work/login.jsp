<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>로그인</title>
    <link rel="stylesheet" href="/WorkProject/css/login.css">
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script>
    	$(function(){
    		$("#loginBtn").click(function(){
    			if($("#id").val()==""){
    				alert("ID를 입력하세요.");
    				$("#id").focus();
    				return false;
    			}
    			if($("#pwd").val()==""){
    				alert("비밀번호를 입력하세요.");
    				$("#pwd").focus();
    				return false;
    			}
    			$.ajax({
    				type:"post",
    				url:"logIn.wo",
    				data:{
    					"id":$("#id").val(),
    					"pwd":$("#pwd").val(),
    					"code":$("#code").val()
    				},
    				success:function(data){
    					if(data.trim()=="회원아님"){
    						alert("회원이 아닙니다. 회원가입하세요.");
    						self.close();
    					}else if(data.trim()=="학생"){
    						alert("학생으로 로그인합니다.");
    						self.close();
    						window.open("main.jsp");
    					}else if(data.trim()=="선생님"){
    						alert("선생님으로 로그인합니다.");
    						self.close();
    						window.open("main.jsp");
    						location.href="main.wo";
    					}else if(data.trim()==2){
    						alert("비밀번호가 일치하지 않습니다.")
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
    <form method="post" id="frm">
        <div class="login">
            <div class="center"><h3>LOGIN</h3></div>
            <hr>
            <br>
            <div class="insert">
                <b>아이디</b> <br><input type="text" name="id" id="id" placeholder="아이디를 입력하세요."><br><br>
                <b>비밀번호</b> <br><input type="password" name="pwd" id="pwd" placeholder="비밀번호를 입력하세요."><br><br>
                <input type="button" value="로그인" id="loginBtn">
            </div>
        </div>
    </form>
</body>
</html>