<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
 <style>
#content {
margin : 20px 100px 20px 100px;
text-align : center;
height:90%;
}
#notice_table{
		width : 700px;
		margin-left : 500px;
		padding : 50px;
		border-collapse: collapse;
}

select{
	float : right;
	margin-right : 400px;
}

#th_style{
		border : 1px solid black;
}

 </style>
 <link href="style.css" rel="stylesheet" type="text/css">
<meta charset="UTF-8">
<title>공지사항</title>
</head>
<body>

	<div id="wrapper">
	
	<!-- header -->
<%@ include file = "Header.jsp" %>
		
	<div id="content"> 
		<h2>공지사항</h2>
	<select name="bPart" onchange="location.href=this.value" >
		<option value="boardsearch?bPart=none">=== 선택 ===</option>
		<option value="pagingList">전체</option>
		<option value="boardsearch?bPart=공지">공지</option>
		<option value="boardsearch?bPart=발표">발표</option>
	</select>
<br>
<br>
	<table id="notice_table">
		<tr id="th_style">
			<th></th>
<!-- 			<th>글 번호</th> -->
			<th>분류</th>
			<th>제목</th>
			<th>조회수</th>
			<th>등록일</th>
		</tr>
		
<%--  			<c:forEach begin="${startRow }"  end="${endRow }"  var="j"  step="1" >        
				<tr>
					<td><c:out value="${j}"></c:out></td>					
 					<td>${boardList[j-1].bNum }</td>
					<td>${boardList[j-1].bPart }</td>
					<td><a href="boardView?bNum=${boardList[j-1].bNum}&page=${paging.page}">${boardList[j-1].bTitle }</a></td>
					<td>${boardList[j-1].bHit }</td>
					<td>${boardList[j-1].bDate }</td>
				</tr>
			</c:forEach> --%>
			 			
		
 			<c:forEach var="board" items="${boardList }" varStatus="status">
				<tr>
					<td><c:out value="${status.count}"></c:out></td>					
					<td>${board.bPart }</td>
					<td><a href="boardView?bNum=${board.bNum}&page=${paging.page}">${board.bTitle }</a></td>
					<td>${board.bHit }</td>
					<td>${board.bDate }</td>
				</tr>
			</c:forEach> 
	</table>	
	<br>
	<br>
	
	<!-- 페이징 처리 -->
	<c:if test="${paging.page<=1 }">[이전]&nbsp;</c:if>
	<c:if test="${paging.page>1 }"><a href="pagingList?page=${paging.page-1 }">[이전]</a>&nbsp;</c:if>
	
	<c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="i" step="1">		
		<c:choose>
		
			<c:when test="${i eq paging.page }">
				${i }
			</c:when>
			
			<c:otherwise>
				<a href="pagingList?page=${i }">${i }</a>
			</c:otherwise>
			
		</c:choose>
	</c:forEach>	
	
	<c:if test="${paging.page>=paging.maxPage }">[다음]</c:if>
	<c:if test="${paging.page<paging.maxPage }"><a href="pagingList?page=${paging.page+1 }">[다음]</a>&nbsp;</c:if>
	
	<!-- <hr> -->
	
	<c:if test="${sessionScope.loginId eq 'admin'}">
		<button onclick="location.href='BoardWrite.jsp'">글 등록</button>
	</c:if>

		</div> <!-- content end -->
	
		<div id="nav">
		</div> <!-- nav end -->
	
<!-- footer -->
<%@ include file = "Footer.jsp" %>
		
	</div> <!-- wrapper end -->
	<br>


</body>

</html>




