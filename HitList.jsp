<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#content {
margin : 20px 100px 20px 100px;
text-align : center;
height:40%;
}
#hitlist{
	margin-left:31%;
	border : 1px solid;
}

</style>
</head>
<body>

	<div id="wrapper">

		<!-- header -->
<%@ include file = "Header.jsp" %>

<div id="content"> 
	<table id="hitlist">
	<h1>회원관리</h1>
		<tr>
			<td>아이디</td>
			<td>패스워드</td>
			<td>이름</td>
			<td>생년월일</td>
			<td>성별</td>
			<td>휴대폰</td>
			<td>이메일</td>
			<td>이용권</td>
			<td>상세보기</td>
			<td>탈퇴</td>
		</tr>
		<c:forEach var="hitList" items="${hitList}">
			<tr>
			<td>${hitList.id}</td>
			<td>${hitList.password}</td>
			<td>${hitList.name}</td>
			<td>${hitList.birth}</td>
			<td>${hitList.gender}</td>
			<td>${hitList.phone}</td>
			<td>${hitList.email}</td>
			<td>${hitList.ticket}</td>
				<td><a href="hitView?loginId=${hitList.id}">상세조회</a></td>
				<td><c:if test="${sessionScope.loginId eq 'admin'}">
						<a href="adminDelete?loginId=${hitList.id}">탈퇴</a>
					</c:if> <c:if test="${sessionScope.loginId ne 'admin'}">
						<a href="hitDelete?loginId=${hitList.id}">탈퇴</a>

					</c:if></td>

				<c:if test=""></c:if>
			</tr>
		</c:forEach>
	</table>
</div>

<!-- footer -->
<%@ include file = "Footer.jsp" %>
		
 <!-- wrapper end -->
</div>
</body>
</html>