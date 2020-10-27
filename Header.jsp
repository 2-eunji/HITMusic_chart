<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<style>
	
	#header {
		margin : 0px 100px 100px 100px;
		margin-left : 400px
	}
	
	#header1{
		    text-align : right;
	}
	
	
	#MainLink{
	    float: left;
	    margin-bottom: 10px;
	}
	
	#header_serch{
		  float: right;
		  margin-bottom: 10px;
	}
	
	a { text-decoration:none }

</style>
 <link href="style.css" rel="stylesheet" type="text/css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="header">
				
			<div id="header1">
			
				<!-- 로그인 하기 전 -->
				<c:if test="${sessionScope.loginId == null}">			
					<a href="Login.jsp">로그인</a>&nbsp;
					<a href="join.jsp">회원가입</a>&nbsp;
					<a href="#" onclick="ticketBuy()">이용권구매</a>
				</c:if>
				
				<c:if test="${sessionScope.loginId != null}">
					<Strong>${sessionScope.loginId}님</Strong>&nbsp;
					<Strong>사용중인 이용권 : ${sessionScope.ticketName}</Strong>&nbsp;
					<a href="hitView?loginId=${sessionScope.loginId}" >내 정보</a>&nbsp;
					<a href="hitLogout">로그아웃</a>&nbsp;
					<a href="ticketBuyView?loginId=${sessionScope.loginId}">이용권구매</a>
				</c:if>		
				
				<c:if test="${sessionScope.loginId eq 'admin'}">
					&nbsp;<a href="hitList">회원관리</a>
				</c:if>
			</div>
			
			
			<div id="MainLink" class="col-sm-4 heading-main">
				<h1 class="mb-0">
				<img src="Hit_Logo.JPG" width="300px">
				</h1>
			</div>
			
			<div id="header_serch">
				<form action="singerMusicSearch"  method="GET" class="search-bar">
							<input type="search" name="singerMusic" pattern=".*\S.*" required>
							<button class="search-btn" type="submit">
								<span>Search</span>
							</button>
						</form>

			</div>
			
			<table>
				<tr>
				<td>
						<div id="MusiclistLink" class="col-sm-4 heading-musiclist" >
							<h5 class="mb-0">01.</h5>
							<h1 class="mb-0">
								<strong>HIT CHART</strong>
							</h1>
						</div>
				</td>
				<td>
						<div id="VoteLink" class="col-sm-4 heading-vote">
							<h5 class="mb-0">02.</h5>
							<h1 class="mb-0">
								<strong>VOTE</strong>
							</h1>
						</div>
				</td>
				<td>
						<div id="NoticeLink" class="col-sm-4 heading-notice">
							<h5 class="mb-0">03.</h5>
							<h1 class="mb-0">
								<strong>NOTICE</strong>
							</h1>
						</div>
				</td>
				</tr>
			</table>
		
		</div> <!-- header end -->
</body>


<script>
	let mainLinkEl = document.getElementById("MainLink");
	let musiclistLinkEl = document.getElementById("MusiclistLink");
	let voteLinkEl = document.getElementById("VoteLink");
	let noticeLinkEl = document.getElementById("NoticeLink");

	mainLinkEl.addEventListener("click", function() {
		location.href = "liveChart"
	}, false);
	musiclistLinkEl.addEventListener("click", function() {
		location.href = "musicList"
	}, false);
	voteLinkEl.addEventListener("click", function() {
		location.href = "Vote.jsp"
	}, false);
	noticeLinkEl.addEventListener("click", function() {
		location.href = "pagingList"
	}, false);
	
	function ticketBuy(){
			alert("로그인 후 이용해주세요!");
			return false;
	}
	
	
</script>


</html>