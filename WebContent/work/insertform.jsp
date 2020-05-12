<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>insert</title>

    <link rel="stylesheet" href="/WorkProject/css/insertform.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
</head>

<style>
    @import url('https://fonts.googleapis.com/css?family=Black+Han+Sans|Do+Hyeon|Nanum+Gothic&display=swap');
</style>

<body>     
    <div id="page" class="container">
        <div id="header">
            <div id="logo">
                <h1>...글 쓰는 중...</h1>
            </div>
            <div id="menu">
                <ul>
                    <li><a href="main.jsp">HOME</a></li>
                    <li><a href="homeworkView.wo">HOMEWORK</a></li>
                    <li><a href="mypage.jsp">MY PAGE</a></li>
                    <li><a href="logout.wo">LOGOUT</a></li>
                </ul>
            </div>
        </div>
        <div id="main">
            <div id="welcome">
                <div class="title">
                    <div class="hello">ㅇㅇㅇ님 안녕하세요</div>
                </div>
            </div>
            <div id="featured">
                <div class="title">
                    <h2>~글 쓰는 중~</h2>
                </div>
                <div id="mainmemo">
                    <table width="665px" style="margin : auto ; text-align : center">
                        <tr>
                          <td><b style="font-size: 20px;">제&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;목</b></td>
                          <td><input type="text" style="width: 500px; border: 2px solid orange;"></td>
                        </tr>
                        <tr>
                          <td><b style="font-size: 20px;">내&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;용</b></td>
                          <td></td>
                        </tr>
                        <tr>
                          <td colspan="2"><textarea rows="13" cols="100" style="width: 650px; border: 2px solid orange;"></textarea></td>
                        </tr>
                        <tr>
                            <td colspan="2"><br>비밀번호&nbsp;&nbsp;<input type="password" placeholder=" 글 수정/삭제시 필요합니다." style="border: 2px solid orange; width: 200px;"></td>
                        </tr>
                        <tr>
                          <td colspan="2"><br><input type="submit" value="작성완료" style="border: 2px solid orange; background-color: orange; color: rgba(248,243,153,1); width: 100px;  height: 40px; font-weight: 600;">&nbsp;&nbsp;&nbsp;&nbsp;
                            <input type="reset" value="취소" style="border: 2px solid orange; background-color: orange; color: rgba(248,243,153,1); width: 60px; height: 40px; font-weight: 600;"></td>
                            
                        </tr>
                      </table>
                    
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