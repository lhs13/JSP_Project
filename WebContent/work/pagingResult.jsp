<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
 <table width="760px" style="border: 1px solid black;">
                        <tr>
                          <th>제목</th>
                          <th>작성자</th>
                          <th>작성일</th>
                          <th>제출기한</th>
                        </tr>
                        <c:forEach items="${lists }" var="hdto" varStatus="st">
                        	<tr>
                        		<td><a href="workDetail.wo?num=${hdto.num }">${hdto.title }</a></td>
                        		<td>${hdto.id }</td>
                        		<td>${hdto.day }</td>
                        		<td>${hdto.homework }</td>
                        	</tr>
                        </c:forEach>
                    </table>
                    <br><br>
					<c:if test="${code == '선생님' }">                    	
                    	<input type="button" name="insertBtn" value="글 작성하기" style="margin-top: 30px; margin-right: 500px;" onclick="location.href='homeworkinsertform.jsp'"> <br><br>         
                    </c:if>         
                    <div align="center">
                    	<c:if test="${pu.startpage>pu.pageblock }"> <!-- 이전 -->
							<a href="javascript:getData(${pu.startpage-pu.pageblock },'${pu.field }','${pu.word}')">이전]</a>
						</c:if>
					
						<c:forEach begin="${pu.startpage }" end="${pu.endpage }" var="i"> <!-- 숫자 페이지 -->
							<c:if test="${i==pu.currentPage }">
								<c:out value="${i }"/> <!-- == ${i} -->
							</c:if>
							<c:if test="${i!=pu.currentPage }">
								<a href="javascript:getData(${i },'${pu.field }','${pu.word }')">${i }</a>
							</c:if>
						</c:forEach>
						<c:if test="${pu.endpage<pu.totpage }"> <!-- 다음 -->
						<a href="javascript:getData(${pu.endpage+1},'${pu.field }','${pu.word}')">[다음</a>
						</c:if>
					</div>