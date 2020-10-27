<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <link href="style.css" rel="stylesheet" type="text/css">
 <style>
#content {
margin : 20px 100px 20px 100px;
text-align : center;
height:90%;
}
#vote {
	text-align: center;
	margin-left : 25%;
}

 </style>
<meta charset="UTF-8">
<title>인기투표</title>
</head>
<body>
	<div id="wrapper">
	
		<!-- header -->
<%@ include file = "Header.jsp" %>
		
		<div id="content"> 
		
		<table id="vote">
		<caption><h2>HIT 주간 인기상 투표시작</h2><hr></caption>
		
		<tr>
			<td><img src="https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/507/074/81507074_1594973911303_1_600x600.JPG" width="400px"><td>
			<td><img src="https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/486/282/81486282_1593149417445_1_600x600.JPG" width="400px"></td>
		</tr>
		
		<tr>
			<td><h3>1. 싹쓰리 (유두래곤 & 린다G & 비룡)</h3><td>
			<td><h3>2. BLACKPINK</h3></td>
		</tr>
		
		<tr>
			<td><h4>다시 여기 바닷가 ( 투표수 : ${vote1 }) </h4><td>
			<td><h4>How You Like That (투표수 : ${vote2 }) </h4><td>
		</tr>

		<c:if test="${vote_success != 1}">
		<tr>
			<td><button onclick="Vote1();">투표하기</button><td>
			<td><button onclick="Vote2();">투표하기</button><td>
		</tr>
		</c:if>
		</table>
	
		<c:if test="${vote_success == 1}">
				<h2>이미 투표 하셨습니다.</h2>				
		</c:if>
		
				<br><br><br><br><br><br><br>
		
		
		</div> <!-- content end -->
	
		<div id="nav">
		</div> <!-- nav end -->
	
<!-- footer -->
<%@ include file = "Footer.jsp" %>
		
	</div> <!-- wrapper end -->

</body>
<script>

	function Vote1(){
		location.href='voteUpdate?vNum=1&nvNum=2';
		alert('투표가 완료되었습니다.');
	}	
	
	function Vote2(){
		location.href='voteUpdate?vNum=2&nvNum=1';
		alert('투표가 완료되었습니다.');
	}
	
	
</script>

</html>