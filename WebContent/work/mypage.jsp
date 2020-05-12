<%@page import="com.work.model.WorkDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>MYPAGE</title>

    <link rel="stylesheet" href="/WorkProject/css/mypage.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src = "mypage.js"></script>
    
</head>

<style>
    @import url('https://fonts.googleapis.com/css?family=Black+Han+Sans|Do+Hyeon|Nanum+Gothic&display=swap');
</style>

<body>     
    <div id="page" class="container">
        <div id="header">
            <div id="logo">
                <h1>MYPAGE</h1>
            </div>
            <div id="menu">
                <ul>
                    <li><a href="main.jsp">HOME</a></li>
                    <li><a href="homework.jsp">HOMEWORK</a></li>
                    <li><a href="mypage.jsp">MY PAGE</a></li>
                    <li><a href="logout.wo">LOGOUT</a></li>             
                </ul>
            </div>
        </div>
        <div id="main">
            <div id="welcome">
                <div class="title">
                    <div class="hello">${userid }님 안녕하세요</div>
                </div>
            </div>
            <div id="featured">
                <div class="title">
                    <h2>정보수정</h2>
                </div>
                <form action="mypage.wo" id="frm" method="post">
                <div id="mainmemo">
                    <div class="insert">
                    	<input type="hidden" name="uid" id="uid" value="${sessDTO.id }">
                        <b>아이디</b> <br><input type="text" name="id" disabled="disabled" value="${sessDTO.id }"><br><br>
                        <b>비밀번호</b> <br><input type="password" name="pwd" id="pwd"><br><br>
                        </div>
                        <hr>
                        <div class="insert">
                        <b>이름</b> <br><input type="text" name="name" id="name" value="${sessDTO.name }"><br><br>
                        <b>생년월일</b> <br><input type="text" name="birth" id="birth" value="${sessDTO.birth }"><br><br>
                        <b>성별</b> <br>
                        <input type="radio" name="gender" value="W">여 &nbsp;
                        <input type="radio" name="gender" value="M">남<br><br>
                        <b>수강과목</b> <br>
                        <input type="checkbox" name="subject" value="kor">국어 &nbsp;
                        <input type="checkbox" name="subject" value="math">수학&nbsp;
                        <input type="checkbox" name="subject" value="eng">영어<br><br><br>
                        <input type="button" id="update" value="수정하기" onclick="update()">
                    
                        </div>
                </div>
                </form>
            </div>
            <div id="copyright">
                <span>주소 ☞ 부산광역시 부산진구 중앙대로 708로 4층</span>
                <span>전화번호 ☞ 051)000-0000 </span>
                <span>사업자등록번호 ☞ 00000000 </span>
            </div>
        </div>
    </div>
</body>
</html>