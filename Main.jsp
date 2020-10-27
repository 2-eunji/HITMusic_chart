<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
 <link href="style.css" rel="stylesheet" type="text/css">
 <style>
	#content {
		margin : 20px 100px 20px 100px;
		height:90%;
	}
	#liveChart{
		margin-left : 30%;
	}
	.liveChart2{
		margin-left : 18%;
	}
	
	#time{
	margin-left: 490px;
	}
 </style>
<meta charset="UTF-8">
<title>HIT 첫화면</title>
</head>
<body>

	<div id="wrapper">
	
		 <!-- header -->
		 <%@ include file = "Header.jsp" %>
		
		<div id="content"> 
				<div id="liveChart">
				<h1 class="liveChart2">HIT 실시간 차트</h1>
				<h3 id="time"></h3>			
				
				<table>
					<!-- forEach문에 변수를 두개 사용함 실시간 차트는 10개만 출력-->
					<c:forEach var="liveChart" begin="0" end="9" items="${liveChartList}" varStatus="status">
						<tr>
							<!-- status변수를 이용하여 count 를 표현해줌 -->
							<td><c:out value="${status.count}." /></td>
							<!-- get방식으로 musicInfo.jsp로 value보내보는방법 사용-->
							<td><a href="musicInfo?name=${liveChart.name}">
									<img alt="순위사진" src="${liveChart.mPhoto}" width="30px"></a></td>
							<td>${liveChart.name}</td>
							<td>${liveChart.artist}</td>
							<!-- 하나의 onclick에서 두가지의 이벤트를 실행 -->
							<td><c:choose>
									<c:when test="${sessionScope.loginId != null}">
										<c:choose>
											<c:when test="${sessionScope.ticketName !='없음'}">
												<button	onclick="location.href='liveChartUpdate?mNum=${liveChart.mNum}';window.open('playListInsert?name=${liveChart.name}&artist=${liveChart.artist}&mPhoto=${liveChart.mPhoto}','playList','width=1000,height=900');">List추가</button>
											</c:when>
											<c:otherwise>
												<button onclick="playListUse()">List추가</button>
											</c:otherwise>
										</c:choose>
									</c:when>
									<c:otherwise>
										<button onclick="logInWhether()">List추가</button>
									</c:otherwise>
								</c:choose></td>
							<td>현재조회수 : ${liveChart.hit}</td>
						</tr>
					</c:forEach>

				</table>
				</div>
			<div id="randomAlbum" >
			<%@ include file = "randomAlbum.jsp" %>
			</div>

		</div> <!-- content end -->
	
		<div id="nav">
			</div> <!-- nav end -->
	
		 <!-- footer -->
		 <%@ include file = "Footer.jsp" %>
		
	</div><!-- wrapper end -->

</body>
<script type="text/javascript">
function logInWhether() {
	alert('로그인 후 이용해주세요!')
}
function playListUse() {
	alert('이용권을 구매해주세요!')
}

setInterval(function() {
  var myDate = new Date();
	
  var yy = myDate.getFullYear();
  var mm = myDate.getMonth()+1;
  var dd = myDate.getDate();
    

	var h = myDate.getHours();
	var m = myDate.getMinutes();
	var s = myDate.getSeconds();
	
    h = checkTime(h);
    m = checkTime(m);
    s = checkTime(s);
	
	document.getElementById("time").innerHTML = yy + "." + mm + "." + dd + " " + h + ":" + m + ":" + s;
}, 500);

function checkTime(i){
    if(i<10){
        i = "0" + i;
    };
    return i;
}

</script>


</html>