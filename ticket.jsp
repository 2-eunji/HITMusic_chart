<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String id = request.getParameter("id");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이용권 목록</title>
<style>
#content {
	margin: 20px 100px 20px 100px;
	text-align: center;
	height: 40%;
}

table, tr, td {
	border-collapse: collapse;
}

#ticket_table {
	border: 1px solid black;
	margin-left: 40%;
	font-size: 20px;
}
</style>
</head>
<body>

	<!-- header -->
	<%@ include file="Header.jsp"%>

	<!-- content -->
	<div id="content">
		<form action="ticketProcess" method="post">
			<input type="hidden" name="loginId" value=<%=id%>>
			<!-- <h3>[Hit 이용권]</h3> -->
			<table id="ticket_table">
				<tr>
					<td></td>
					<td>번호</td>
					<td>이용권</td>
					<td>가격</td>
					<td></td>
				</tr>

				<c:forEach var="ticketList" items="${ticketList}">
					<tr>
						<td><input type="radio" name="ticket"
							value="${ticketList.ticket}"></td>&nbsp;
						<td>${ticketList.num}</td>&nbsp;
						<td>${ticketList.ticket}</td>&nbsp;
						<td>${ticketList.balance}</td>&nbsp;
						<td><input type="submit" value="구매" /></td>
						
					</tr>
				</c:forEach>
			</table>

		</form>
		<br>
	</div>

	<!-- footer -->
	<%@ include file="Footer.jsp"%>

</body>

<script>
/* function ticket(){
	alert("이용권구매가 완료되었습니다.");
} */
</script>
</html>