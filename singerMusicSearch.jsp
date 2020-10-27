<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>검색결과</title>
<style>
#content {
	margin: 20px 100px 20px 100px;
	text-align: center;
	height: 45%;
}
#search {
	/* margin-left:40%; */
	text-align: center;
}
#search2 {
	margin-left: 35%;
}
</style>
</head>
<body>
	<div id="wrapper">

		<!-- header -->
		<%@ include file="Header.jsp"%>

		<div id="content">
			<h1 id="search">"${singerMusic}" (으)로 검색한 결과</h1><br>

			<table id="search2">
				<c:forEach var="search" items="${singerMusicSearch}"
					varStatus="status">
					<tr>
						<!-- status변수를 이용하여 count 를 표현해줌 -->
						<td><c:out value="${status.count}." /></td>
						<!-- get방식으로 musicInfo.jsp로 value보내보는방법 사용-->
						<td><a
							href="musicInfo?name=${search.name}">
								<img alt="순위사진" src="${search.mPhoto}" width="30px">
						</a></td>
						<td>${search.name}</td>
						<td>${search.artist}</td>
					</tr>
				</c:forEach>
			</table>
			<!-- <button onclick="Main()">메인</button>&nbsp;
		<button onclick="Login()">로그인</button> -->
</div>
			<!-- footer -->
			<%@ include file="Footer.jsp"%>
		</div>
</body>
<script type="text/javascript">
	function logInWhether() {
		alert('로그인 후 이용해주세요!')
	}
	function Main() {
		location.href = "startMain.jsp";
	}
	function Login() {
		location.href = "Login.jsp";
	}
</script>

</html>