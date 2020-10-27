<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<style>
#content {
margin : 20px 100px 20px 100px;
text-align : center;
height:45%;
}
#hitJoin_table{
	font-size: 15px;
	margin-left: 40%;
	text-align: left;
	text-align : center;
	border-collapse: collapse;
	border : 1px solid;
	
}
td{
 font-size: 20px;
 text-align: left;
 padding: 5px;
 }
#회원{
 font-size: 20px;
 text-align: center;
 background-color: black;
 color: white;    
 }
/* #hitJoin_table{
	width : 300px;
	height : 280px; 
	border: 1px solid;
	margin-left : 550px;
	font-size : 18px
} */
</style>
</head>
<body>

<!-- header -->
<%@ include file = "Header.jsp" %>

<!-- content -->
<div id="content"> 

<form action="hitJoin" method="post" name="Join">
<table id="hitJoin_table">
	<tr>
		<td rowspan="2" colspan="3" id="회원">회원가입</td>
	</tr>
	<tr></tr>
	<tr>
		<td>아이디</td>
		<td><input  type="text" name="id"  id="id" placeholder="아이디"></td>
		<td></td>
	</tr>
	<tr>
		<td>비밀번호</td>
		<td><input type="password" name="password" id="pw" placeholder="비밀번호"></td>
		<td></td>
	</tr>
	<tr>
		<td>이름</td>
		<td><input type="text" name="name" id="name"placeholder="이름"></td>
		<td></td>
	</tr>
	<tr>
		<td>생년월일</td>
		<td><input type="date" name="birth" id="birth"></td>
		<td></td>
	</tr>
	<tr>
		<td>성별</td>
		<td><input type="radio" name="gender" id="gen" value="남">남자
				<input type="radio" name="gender" id="gen" value="여">여자</td>
		<td></td>
	</tr>
	<tr>
		<td>휴대폰</td>
		<td><input type="text" name="phone" id="pho" placeholder="휴대폰"></td>
		<td></td>
	</tr>
	<tr>
		<td>이메일</td>
		<td><input type="email" name="email" id="ema" placeholder="이메일"></td>
		<td></td>
	</tr>
	<tr>
		<td style="text-align: centet;" colspan="3">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="button" onClick="idFail()" value="회원가입">
			<button type="reset">다시작성</button></td>		
	</tr>
</table>
</form>
</div>

<!-- footer -->
<%@ include file = "Footer.jsp" %>

</body>
<script>

function idFail() {
	var hit_id = document.getElementById("id");
	
	if(hit_id.value=="" || hit_id.value==null) {
		alert('아이디를 확인해주세요');
		focus.id;
		return false;
	} else {
		
		pwFail();
		
	}
}

function pwFail(){
	var hit_pw = document.getElementById("pw");

	if(hit_pw.value=="" || hit_pw.value==null) {
		alert('비밀번호를 확인해주세요');
		focus.pw;
		return false;
	} else {
	
		nameFail();
		
	}
}

function nameFail(){
	var hit_name = document.getElementById("name");
	
	if(hit_name.value=="" || hit_name.value==null) {
		alert('이름을 확인해주세요');
		focus.name;
		return false;
	} else {
		
		birthFail();
		
	}
}

function birthFail(){
	var hit_birth = document.getElementById("birth");
	
	if(hit_birth.value=="" || hit_birth.value==null) {
		alert('생년월일을 확인해주세요');
		focus.birth;
		return false;
	} else {
		
		genFail();
		
	}
}

function genFail(){
	var hit_gen = document.getElementById("gen");
	
	if(hit_gen.value=="" || hit_gen.value==null) {
		alert('성별을 확인해주세요');
		focus.gen;
		return false;
	} else {
		
		phoFail();
		
	}
}

function phoFail(){
	var hit_pho = document.getElementById("pho");
	
	if(hit_pho.value=="" || hit_pho.value==null) {
		alert('휴대폰를 확인해주세요');
		focus.pho;
		return false;
	} else {
		
		emaFail();
		
	}
}

function emaFail(){
	var hit_ema = document.getElementById("ema");
	
	if(hit_ema.value=="" || hit_ema.value==null) {
		alert('이메일을 확인해주세요');
		focus.ema;
		return false;
	} else {
		alert('가입완료 되었습니다.');
		Join.submit();
		
	}
}

</script>
</html>