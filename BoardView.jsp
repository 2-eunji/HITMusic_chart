<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <style>
#content {
/* height : 800px; */
margin : 20px 100px 20px 100px;
text-align : center;
height:45%;
}
#content_table{
		width : 700px;
		margin-left : 450px;
		padding : 50px;
		border-collapse: collapse;
	}
 </style>

 <link href="style.css" rel="stylesheet" type="text/css">
<meta charset="UTF-8">
<title>상세보기</title>

</head>
<body>

	<div id="wrapper">
	
<!-- header -->
<%@ include file = "Header.jsp" %>
		
		<div id="content"> 
		<h2>게시글 상세보기</h2>
			<table id=content_table border="1">
				<tr>
					<td>${boardView.bPart }</td>
					<td>${boardView.bTitle }</td>
					<td>조회수 : ${boardView.bHit }</td>
					<td>등록일 : ${boardView.bDate }</td>
				</tr>
				<tr>
					<td colspan="4"><textarea rows="20" cols="60" name="bContent">${boardView.bContent }</textarea></td>
				</tr>
				<tr>
					<td>파일</td>
					<td colspan="3"><img src="fileUpload/${boardView.bFile }" width="200"><br/>${boardVew.bFile }</td>
				</tr>
				<tr>
					<td colspan="4">
					<button onclick="location.href='pagingList'">목록</button>&nbsp;&nbsp;
						<c:if test="${sessionScope.loginId eq 'admin'}">
							<button onclick="Modify()">수정</button>&nbsp;&nbsp;
							<button onclick="Delete()">삭제</button>&nbsp;&nbsp;
						</c:if>
					</td>
				</tr>
			</table>
		</div> <!-- content end -->
	
		<div id="nav">
		</div> <!-- nav end -->
	
<!-- footer -->
<%@ include file = "Footer.jsp" %>

		
	</div> <!-- wrapper end -->

</body>

<script>
	function Modify(){
			location.href='boardModify?bNum=${boardView.bNum}';
	}
	
	function Delete(){
			alert('해당 게시글이 삭제되었습니다.');
			location.href='boardDelete?bNum=${boardView.bNum}';
	}	
	
</script>

</html>