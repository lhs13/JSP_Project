<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>MAIN</title>

    <link rel="stylesheet" href="/WorkProject/css/main.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
</head>

<style>
    @import url('https://fonts.googleapis.com/css?family=Black+Han+Sans|Do+Hyeon|Nanum+Gothic&display=swap');
</style>

<body>     
    <div id="page" class="container">
        <div id="header">
            <div id="logo">
                <h1>00학원<br>과제관리시스템</h1>
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
                    <h2><a href="notice-in.jsp" class="fontori">오시는 길</a></h2>
                </div>
                <div id="mainmemo">
                    <div><br><a href="https://v4.map.naver.com/?mapmode=0&lng=67a60f6123558312ad1e0567b8d4fc86&pinId=13108087&lat=973843d8c582c16af4a0032e7728b823&dlevel=8&enc=b64&pinType=site" target="blank">
                    <img src="/WorkProject/img/map.jpg" alt="" width="300px" height="300px"><br><br></a></div>
                    <div style="margin-top: 30px;">
                        <table style="text-align: left;">
                            <tr>
                                <td>
                                    <b>주소</b>
                                    <hr>
                                </td>
                                <td>
                                    (47291) 부산광역시 부산진구 중앙대로 708
                                    <hr>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <b>대표전화</b>
                                    <hr> 
                                </td>
                                <td>
                                    051-753-5600
                                    <hr>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <b>팩스번호</b>
                                    <hr>
                                </td>
                                <td>
                                    051-753-5117
                                    <hr>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <b>버스 이용 시</b>
                                    <br><br><br><br>
                                    <hr>
                                </td>
                                <td>
                                    일반 : 10, 20, 24, 54, 66, 81, 83, 83-1, 86, 88A, 103, 111, 133, 583 서면 정류장 하차<br>
                                    급행 : 1010, 1002(심야) 서면 정류장 하차<br>
                                    마을 : 부산진구12 서면역 정류장 하차
                                    <hr>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 200px;">
                                    <b>지하철 이용 시</b><hr>
                                </td>
                                <td>
                                    서면역 2번 출구 쥬디스태화 방면 10m 부산파이낸스센터 4, 5층<hr>
                                </td>
                            </tr>
                        </table>
                    </div>

                </div>
            </div>
            <div id="featured">
                <div class="title">
                    <h2>교육과정소개</h2>
                </div>
                <div id="mainmemo2">
                    <table>
                        <tr>
                          <th style="font-size: 30px; font-weight: 800; width: 300px;">국어<hr></th>
                          <th style="font-size: 30px; font-weight: 800; width: 300px;">수학<hr></th>
                          <th style="font-size: 30px; font-weight: 800; width: 300px;">영어<hr></th>
                        </tr>
                        <tr>
                            <td>
                              <b>--중등과정--</b><br>
                              뭐뭐뭐<br>
                              <b>--고등과정--</b><br>
                              뭐뭐뭐
                            </td>
                            <td>
                                <b>--중등과정--</b><br>
                                뭐뭐뭐<br>
                                <b>--고등과정--</b><br>
                                뭐뭐뭐
                            </td>
                            <td>
                                <b>--중등과정--</b><br>
                                뭐뭐뭐<br>
                                <b>--고등과정--</b><br>
                                뭐뭐뭐
                            </td>
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