<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
 <link href="style.css" rel="stylesheet" type="text/css">
<style>
#content {
	margin : 20px 100px 20px 100px;
	text-align : center;
	height:90%;
}
.content2{
	margin-left : 30%;
}

</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div id="wrapper">
	
<!-- header -->
<%@ include file = "Header.jsp" %>
		
		<div> 
		<h1 id="content" color="red">TOP20</h1> 
				<table class="content2">
					<!-- forEach문에 변수를 두개 사용함 -->
				<c:forEach var="Music" items="${musicList}" varStatus="status">
					<tr>
						<!-- status변수를 이용하여 count 를 표현해줌 -->
						<td><c:out value="${status.count}." /></td>
						<!-- get방식으로 musicInfo.jsp로 value보내보는방법 사용-->
						<td><a href="musicInfo?name=${Music.name}">
								<img alt="순위사진" src="${Music.mPhoto}" width="30px">
						</a></td>
						<td>${Music.name}</td>
						<td>${Music.artist}</td>
						<!-- 하나의 onclick에서 두가지의 이벤트를 실행 -->
						<td><c:choose>
								<c:when test="${sessionScope.loginId != null}">
									<c:choose>
										<c:when test="${sessionScope.ticketName !='없음'}">
											<button
												onclick="location.href='hitUpdate?mNum=${Music.mNum}';window.open('playListInsert?name=${Music.name}&artist=${Music.artist}&mPhoto=${Music.mPhoto}','playList','width=1000,height=900');">List추가</button>
										</c:when>
										<c:otherwise>
											<button onclick="playListUse()">List추가</button>
										</c:otherwise>
									</c:choose>
								</c:when>
								<c:otherwise>
									<button onclick="logInWhether()">List추가</button>
								</c:otherwise>
							</c:choose></td>
						<td>현재조회수 : ${Music.hit}</td>

					</tr>
				</c:forEach>
			
				</table>
		</div> <!-- content end -->
	
		<div id="nav">
		</div> <!-- nav end -->
	
<!-- footer -->
<%@ include file = "Footer.jsp" %>
		
	</div> <!-- wrapper end -->

</body>

<script type="text/javascript">
function logInWhether() {
	alert('로그인 후 이용해주세요!')
}
function playListUse() {
	alert('이용권을 구매해주세요!')
}
</script>


</html>