<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
#content {
margin : 20px 100px 20px 100px;
text-align : center;
height:40%;
}
#content2{
	margin-left:44%;
}
 </style>
<meta charset="UTF-8">
<title>로그인</title>
</head>

<body>

<!-- header -->
<%@ include file = "Header.jsp" %>

<!-- content -->

<div id="content"> 
<h2>로그인</h2>
<form action="hitLogin" method="post" id="loginForm" name="Login">
	<table id="content2">
		<tr>
			<td><input type="text" name="id" id="id" placeholder="아이디"><br></td>
		</tr>
		<tr>
			<td><input type="password" name="password" id="pw" placeholder="비밀번호"><br></td>
		</tr>
		<tr>
			<td><input type="button" style="padding : 5px; padding-left :66.5px; padding-right : 66.5px; color:#FFFFFF; background-color: #35B62C; border-radius:0.5em; " onclick="login()" value="로그인"></td>
		</tr>
</table>
</form>
</div>

<!-- footer -->
<%@ include file = "Footer.jsp" %>

</body>

<script>

function login() {
	var hit_id = document.getElementById("id");
	
	if(hit_id.value=="" || hit_id.value==null) {
		alert('아이디를 입력해주세요');
		focus.id;
		return false;
	} else {
		
		pwlogin();
		
		
		
	}
}

function pwlogin(){
	var hit_pw = document.getElementById("pw");

	if(hit_pw.value=="" || hit_pw.value==null) {
		alert('비밀번호를 입력해주세요');
		focus.pw;
		return false;
	} else {
	
		Login.submit();
		
	}
}
</script>

</html>