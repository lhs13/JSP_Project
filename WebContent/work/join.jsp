<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>JOIN</title>
    <link rel="stylesheet" href="/WorkProject/css/join.css">
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src = "join.js"></script>
</head>
<body>
    <form action="workInsert.wo" id="frm" method="post">
    <input type="hidden" name="uid" id="uid">
        <div class="join" id="joinform">
            <div class="center"><h3>회원가입</h3></div>
            <hr>
            <div class="insert">
            <b>아이디</b> <br><input type="text" name="id" id="id" placeholder="사용할 아이디를 입력하세요." disabled="disabled"><br><br>
             <input type="button" value="중복체크" id="idBtn"><br><br>
            <b>비밀번호</b> <br><input type="password" name="pwd" id="pwd" placeholder="사용할 비밀번호를 입력하세요."><br><br>
            <b>비밀번호 확인</b> <br><input type="password" name="pwdcheck" id="pwdcheck" placeholder="비밀번호를 다시 한 번 확인해주세요."><br><br>
            </div>
            <hr>
            <div class="insert">
            <b>이름</b> <br><input type="text" name="name" id="name" placeholder="이름을 입력하세요."><br><br>
            <b>생년월일</b> <br><input type="text" name="birth" id="birth" placeholder="yyyymmdd"><br><br>
            <b>성별</b> <br><input type="radio" name="gender" id="gender" value="W">여 <input type="radio" name="gender" id="gender" value="M">남<br><br>
            <b>수강과목</b> <br><input type="checkbox" name="subject" id="subject" value="kor">국어 <input type="checkbox" name="subject" id="subject" value="math">
                    	수학 <input type="checkbox" name="subject" id="subject" value="eng">영어<br><br><hr><br>
            <b>코드</b> <br><input type="text" name="code" id="code" placeholder="부여받은 코드를 입력하세요."><br><br>
            <input type="button" value="가입하기" id="send" onclick="window.close()">
            </div>
        </div>
    </form>
</body>
</html>