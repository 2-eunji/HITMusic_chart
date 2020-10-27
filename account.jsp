<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<% String id = request.getParameter("id"); %>
<!DOCTYPE html>
<html>
<head>
 <style>
#content {
margin : 20px 100px 20px 100px;
margin-left : 40%;
height:40%;
}

 </style>
<meta charset="UTF-8">
<title>계좌생성</title>
</head>
<body>

<!-- header -->
<%@ include file = "Header.jsp" %>

<!-- content -->
<div id="content"> 
	<form action="accountProcess" name=accAdd>
		<table>
			<tr>
			<h3>계좌생성</h3>
			<td><h4>계좌번호 : <input type="text" name="account" id="account"></h4></td>
			<td><input type="hidden" name="loginId" value=<%=id%>></td>
		<td><button style="padding : 5px; padding-left :30.5px; padding-right : 30.5px; color:#FFFFFF; background-color: #35B62C; border-radius:0.5em; " onclick="accountAdd()">생성</button></td>
	</tr>
	</table>
	</form>
</div>

<!-- footer -->
<%@ include file = "Footer.jsp" %>

</body>
<script>
function accountAdd(){
	alert("계좌가 생성되었습니다.");
	accAdd.submit();
}
</script>
</html>