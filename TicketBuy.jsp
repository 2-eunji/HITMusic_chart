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
 </style>
<meta charset="UTF-8">
<title>이용권 구매</title>
</head>

<body>
<!-- header -->
<%@ include file = "Header.jsp" %>

<!-- content -->
<div id="content"> 
	<h3>"${ticketBuyView.id}" 님 환영합니다!</h3> 
	<h4>현재금액은 : "${ticketBuyView.balance}" 원 입니다.</h4>
	<h4>현재 사용중인 이용권은 : "${ticketBuyView.ticket}" 입니다.</h4>
	
	<button onclick="location.href='account.jsp?id=${ticketBuyView.id}'">계좌생성</button>
	<button onclick="location.href='balance.jsp?id=${ticketBuyView.id}&account=${ticketBuyView.account}'">충전하기</button> 
	<button onclick="location.href='ticketList?id=${ticketBuyView.id}'">이용권구매</button> 
<!-- 	<button onclick="location.href='liveChart'">메인으로</button>  -->
	</div>

<!-- footer -->
<%@ include file = "Footer.jsp" %>
	
</body>
</html>