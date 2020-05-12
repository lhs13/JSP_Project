<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>insert</title>

    <link rel="stylesheet" href="/WorkProject/css/homework-in.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src = "homework-in.js"></script>
</head>

<style>
    @import url('https://fonts.googleapis.com/css?family=Black+Han+Sans|Do+Hyeon|Nanum+Gothic&display=swap');
</style>

<body>     
    <div id="page" class="container">
        <div id="header">
            <div id="logo">
                <h1>ㅇㅇ학원<br>과제관리시스템</h1>
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
                    <h2>과제보는 페이지</h2>
                </div>
                <form action="update.wo" method="post" id="updateform">
                <input type="hidden" name="num" id="num" value="${hdto.num }">
                <div id="mainmemo">
                    <table width="665px" style="margin : auto ; text-align : center">
                        <tr>
                          <td><b style="font-size: 20px;">제&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;목</b></td>
                          <td><input type="text" name="title" id="title" value="${hdto.title }" style="width: 500px; height:30px; border: 2px solid rgba(141,77,70,1);"></td>
                          
                        </tr>
                        <tr>
                            <td><b style="font-size: 20px;">제출기한</b></td>
                            <td><input type="text" name="homework" id="homework" value="${hdto.homework }" placeholder=" yyyymmdd" style="width: 500px; height:30px; border: 2px solid rgba(141,77,70,1);"></td>
                        </tr>
                        <tr>
                          <td><b style="font-size: 20px;">내&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;용</b></td>
                          <td></td>
                        </tr>
                        <tr>
                          <td colspan="2"><textarea name="content" id="content" rows="12" cols="100" style="width: 650px; height:330px; border: 2px solid rgba(141,77,70,1);">${hdto.content }</textarea></td>
                          <!-- <input type="text" value="${hdto.content }" style="width: 650px; height:300px; border: 2px solid rgba(141,77,70,1);">
                           -->
                        </tr>
                        <c:if test="${userid == hdto.id}">
                        <tr>
	                       	<td colspan="2"><br>
	                          	<input type="button" value="수정" name="update" id="update" style="border: 2px solid rgba(188,99,93,1); background-color: rgba(188,99,93,1); color: rgba(246,231,241,1); width: 60px; height: 40px; font-weight: 600;">&nbsp;&nbsp;&nbsp;&nbsp;
	                            <input type="button" value="삭제" name="del" id="del" style="border: 2px solid rgba(188,99,93,1); background-color: rgba(188,99,93,1); color: rgba(246,231,241,1); width: 60px; height: 40px; font-weight: 600;">
	                         </td>
                        </tr>
                        </c:if>
                      </table>
                    
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