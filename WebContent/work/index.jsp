<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ㅇㅇ학원 홈페이지에 온 것을 환영합니다!</title>
<link rel="stylesheet" href="/WorkProject/css/index.css">
<script>
   function join(){
       window.open("join.jsp", "join", "width=515px, height=800px, left=500, top=80");
   }
   function login(){
       window.open("login.jsp","login","width=500px, height=500px, left=500, top=80");
   }
</script>
</head>
<body>
	<form action="">
        <div class="first-form">
            <div class="hello">~HELLO~</div>
            <button class="firstBtn" onclick="login()">LOGIN</button>
            <button class="firstBtn" onclick="join()">JOIN</button>
        </div>
    </form>
</body>
</html>