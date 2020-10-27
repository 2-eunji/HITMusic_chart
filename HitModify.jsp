<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
/* table,tr,td,th{
	font-size: 25px;
	margin-left: 38%;
	text-align: left;
	text-align : center;
	border-collapse: collapse;
}
th,td{
font-size: 20px;
text-align: left;
padding: 10px;
} */
#회원{
 font-size: 15px;
 text-align: center;
 background-color: black;
 color: white;
}
#modify_table{
	border: 1px solid;
	margin-left:41%;
}

</style>
</head>
<body>
<!-- header -->
<%@ include file = "Header.jsp" %>

<!-- content -->
<div id="content"> 
<h1>회원정보 수정</h1>

<form action="hitModify" method="post" name="Modify">
<table id="modify_table">
	<tr>
		<td rowspan="2" colspan="3" id="회원">회원수정</td>
	</tr>
	<tr></tr>
	
	<tr>
		<td>변경할 비밀번호</td>
		<td><input type="password" name="password" id="pw" value="${param.password}"></td>
		<td></td>
	</tr>
	<tr>
		<td>변경할 휴대폰</td>
		<td><input type="text" name="phone" id="pho" value="${param.phone}"></td>
		<td></td>
	</tr>
	<tr>
		<td>변경할 이메일</td>
		<td><input type="email" name="email" id="ema" value="${param.email}"></td>
		<td></td>
	</tr>
	<tr>
		<td style="text-align: centet;" colspan="3">
		&nbsp;&nbsp;&nbsp;
		<input type="button" onClick="pwFail()" value="회원수정">
		<button type="reset">다시작성</button></td>
	</tr>
</table>
</form>
</div>

<!-- footer -->
<%@ include file = "Footer.jsp" %>

</body>
<script>
function pwFail(){
	var hit_pw = document.getElementById("pw");

	if(hit_pw.value=="" || hit_pw.value==null) {
		alert('비밀번호를 확인해주세요');
		focus.pw;
		
	} else {
	
		phoFail();
		
	}
}

function phoFail(){
	var hit_pho = document.getElementById("pho");
	
	if(hit_pho.value=="" || hit_pho.value==null) {
		alert('휴대폰를 확인해주세요');
		focus.pho;
		
	} else {
		
		emaFail();
	
	}
}

function emaFail(){
	var hit_ema = document.getElementById("ema");
	
	if(hit_ema.value=="" || hit_ema.value==null) {
		alert('이메일을 확인해주세요');
		focus.ema;
		
	} else {
			Modify.submit();
	}
}


</script>
</html>