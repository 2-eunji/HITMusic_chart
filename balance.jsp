<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <% String id = request.getParameter("id"); %>
  <% String account = request.getParameter("account"); %>
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
<title>충전하기</title>
</head>
<body>

<!-- header -->
<%@ include file = "Header.jsp" %>

<!-- content -->
<div id="content"> 
	<form action="balanceProcess" name=balAdd>
		<table>
			<tr>
				<h3>금액</h3>
					<td><h4>충전할 금액 : <input type="text" name="balance" id="balance"></h4></td>
					<td><input type="hidden" name="loginId" value=<%=id%>></td>
					<td><input type="hidden" name="Account" value=<%=account%>></td>
		
					<td><button style="padding : 5px; padding-left :30.5px; padding-right : 30.5px; color:#FFFFFF; background-color: #35B62C; border-radius:0.5em; " onclick="balanceAdd()">충전</button></td>
			</tr>
		</table>
	</form>
	
</div>

<!-- footer -->
<%@ include file = "Footer.jsp" %>

</body>
<script>
function balanceAdd(){
	alert("충전되었습니다.");
		balAdd.submit();
}
</script>
</html>