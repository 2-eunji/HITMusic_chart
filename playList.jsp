<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<style>
img {
	width: 30px;
}

#logo{
	width: 300px;
	margin-rigth: 120px;
}

#list{
margin: 70px;
}

</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<img src="Hit_Logo.JPG"  id="logo">

	<hr>
	
	<div id="list">
	<table>
		<!-- forEach문에 변수를 두개 사용함 -->
		<c:forEach var="List" items="${playList}" varStatus="status">
			<tr>
				<td><c:out value="${status.count}" />.</td>
				<td>${List.name}</td>
				<td>${List.artist}</td>
				<td>
				<audio controls="controls">
				<source src="MusicFile/${List.name}.mp3" type="audio/mp3" />
					</audio></td>
				<td><button onclick="location.href='listDelete?listNum=${List.listNum}'">삭제</button> </td>
			</tr>
		</c:forEach>

	</table>
	</div>



</body>

</html>