<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>HOMEWORK</title>

    <link rel="stylesheet" href="/WorkProject/css/homework.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src = "homework.js"></script>
</head>

<style>
    @import url('https://fonts.googleapis.com/css?family=Black+Han+Sans|Do+Hyeon|Nanum+Gothic&display=swap');
</style>

<body>     
    <div id="page" class="container">
        <div id="header">
            <div id="logo">
                <h1>HOMEWORK</h1>
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
                    <h2>HOMEWORK</h2>
                </div>
                <div id="mainmemo">
                 <input type="hidden" name="num" id="num" value="${hdto.num }">
                  <div id="sarea"></div>
                    <br>
                </div>
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