<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link href="style.css" rel="stylesheet" type="text/css">
<style>
table {
	width: 600px;
	margin-top: 3%;
}

#content {
	margin: 20px 100px 20px 100px;
	height:90%;
}

#view_table {
	margin-left: 300px;
}

#comment_table {
	margin-left: 300px;
}

h1 {
	text-align: center;
}

h3 {
	margin-left: 300px;
}

#mv {
	margin-left: 300px;
}

#cmView_table {
	width: 850px;
	margin-left: 310px;
	border-top: 1px solid #444444;
	border-collapse: collapse;
}

.td {
	border-bottom: 1px solid #444444;
	padding: 20px;
	text-align: right;
}

#usericon {
	border-bottom: 1px solid #444444;
	padding: 10px;
	text-align: center;
}

#content {
	padding-top: 20px;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="wrapper">

		<!-- header -->
		<%@ include file="Header.jsp"%>

		<div id="content">

			<!-- musicList에서 이미지를 클릭 했을 때 그 노래의 정보를 보는 페이지  -->
			<!-- musicList에서 get방식으로 value를 name에 저장하여 보내준것을  musicInfo에서 사용 -->
			<h1>${musicInfo.name}</h1>
			<br>
			<hr>
			<table id="view_table">
				<tr>
					<td rowspan="5"><img src="${musicInfo.mPhoto}" width="250px"></td>
				</tr>
				<tr>
					<th colspan="2"><Strong>${musicInfo.name}</Strong></th>
				</tr>
				<tr>
					<td style="color: DimGrey;">아티스트</td>
					<td>${musicInfo.artist}</td>
				</tr>
				<tr>
					<td style="color: DimGrey;">장르/스타일</td>
					<td>${musicInfo.genre}</td>
				</tr>
				<tr>
					<td style="color: DimGrey;">발매일</td>
					<td>${musicInfo.mDate}</td>
				</tr>
			</table>
			<br> <br>
			<h3>뮤직비디오</h3>
			<br>
			<iframe id="mv" width="560" height="315" src="${musicInfo.mv}"				frameborder="0"				allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"				allowfullscreen></iframe>
			<br> <br>
			
			
			<div id="comment">
				<h3>댓글</h3>
				
				<div>
					<form action="commentView" method="post">
						<input type="hidden" name="cmusic" value="${musicInfo.name}">
						<input type="hidden" name="loginId"
							value="${sessionScope.loginId }">
						<table id="comment_table">
							<tr>
								<td><textarea rows="5" cols="120" name="comment"
										placeholder="명예회손, 개인정보 유출, 인격권 침해, 허위사실 유표 등은 이용약관 및 관련법률에 의해 제재를 받을 수 있습니다. 건전한 댓글 문화 장착을 위해 이용에 주의를 부탁드립니다."></textarea></td>
								<c:if test="${sessionScope.loginId != null}">
									<td><input type="submit" value="댓글 등록"
										style="width: 100px; height: 70px;"></td>
								</c:if>
							</tr>
						</table>
					</form>
					<!-- 댓글 목록 -->
					<table id="cmView_table">
						<c:forEach var="cm" items="${cmView }">
							<tr>
								<td rowspan="2" id="usericon"><img src="cuserIcon.png"
									width="70px"></td>
								<td id="content">${cm.cContent }</td>
							</tr>
							<tr>
								<td class="td" style="color: DimGrey;">${cm.cId }|
									${cm.cDate }</td>
							</tr>
						</c:forEach>
					</table>
				</div>
			</div>
			
		</div>
		<!-- content end -->

		<div id="nav"></div>
		<!-- nav end -->

		<!-- footer -->
		<%@ include file="Footer.jsp"%>

	</div>
	<!-- wrapper end -->

</body>
</html>