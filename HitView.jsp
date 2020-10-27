<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#content {
margin : 20px 100px 20px 100px;
text-align : center;
height:45%;
}
	table,tr,td{
		border-collapse: collapse;
		/* text-align : center; */
	}

#view_table{
		border : 1px solid black;
		margin-left : 36%;
}
</style>
</head>
<body>

<!-- header -->
<%@ include file = "Header.jsp" %>

<!-- content -->
<div id="content"> 
<!-- <h1>Hit View.jsp</h1> -->
<h1>${hitView.id}님의 회원정보</h1><br>
<form action="hitView" method="post" name="View">
<table id="view_table">
		<tr>
		<td>아이디</td>
		<td>비밀번호</td>
		<td>이름</td>
		<td>생년월일</td>
		<td>성별</td>
		<td>휴대폰</td>
		<td>이메일</td>
		<td></td>
		</tr>

		<tr>
			<td>${hitView.id}</td>
			<td>${hitView.password}</td>
			<td>${hitView.name}</td>
			<td>${hitView.birth}</td>
			<td>${hitView.gender}</td>
			<td>${hitView.phone}</td>
			<td>${hitView.email}</td>
			<td></td>
		</tr>
	
</table>
</form>
		<br>
		<button onclick="Delete()">회원탈퇴</button>
		<button onclick="Modify()">회원수정</button>
</div>

<!-- footer -->
<%@ include file = "Footer.jsp" %>

</body>
<script>
function Modify() {
	var passConfirm = prompt('비밀번호를 입력하세요');
	var password ='${hitView.password}';
	
	if(password==passConfirm) {
		location.href='HitModify.jsp?loginId=${hitView.id}&password=${hitView.password}&phone=${hitView.phone}&email=${hitView.email}';
	}else{
		alert('비밀번호가 틀립니다.')
	}
}

function Delete() {
	var passConfirm = prompt('비밀번호를 입력하세요');
	var password = '${hitView.password}';
	if(password==passConfirm) {
		location.href='hitDelete?loginId=${hitView.id}';
	}else{
		alert('비밀번호가 틀립니다.')
	}
}
</script>
</html>

