<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
#content {
	margin: 20px 100px 20px 100px;
	text-align: center;
	height: 40%;
}

#content_table {
	width: 700px;
	margin-left: 30%;
	padding: 50px;
	border-collapse: collapse;
}
</style>

<link href="style.css" rel="stylesheet" type="text/css">
<meta charset="UTF-8">
<title>수정</title>
</head>
<body>

	<div id="wrapper">

		<!-- header -->
		<%@ include file="Header.jsp"%>

		<div id="content">
			<h2>게시글 수정</h2>
			<form action="boardUpdate" method="post" name="updateForm"
				enctype="multipart/form-data">
				<input type="hidden" name="bNum" value="${boardView.bNum }">
				<table id="content_table" border="1">
					<tr>
						<td>분류</td>
						<td><select name="bPart">
								<option value="none">=== 선택 ===</option>
								<option value="공지">공지</option>
								<option value="발표">발표</option>
						</select></td>
					</tr>
					<tr>
						<td>제목</td>
						<td><input type="text" name="bTitle" size="39"
							value="${boardView.bTitle }"></td>
					</tr>
					<tr>
						<td>내용</td>
						<td><textarea rows="20" cols="40" name="bContent">${boardView.bContent }</textarea></td>
					</tr>
					<tr>
						<td>파일</td>
						<td><input type="file" name="bFile"
							value="${boardVew.bFile }"> <img
							src="fileUpload/${boardView.bFile }" width="200"><br />${boardVew.bFile }
						</td>
						<td><input type="hidden" name="bFile1"
							value="${boardView.bFile}"></td>
					</tr>
					<tr>
						<td>조회수</td>
						<td>${boardView.bHit }</td>
					</tr>
					<tr>
						<td>등록일</td>
						<td>${boardView.bDate }</td>
					</tr>
				</table>
			</form>
			<br>
			<button onclick="boardUpdate()">정보수정</button>
		</div>
		<!-- content end -->

		<div id="nav"></div>
		<!-- nav end -->

		<!-- footer -->
		<%@ include file="Footer.jsp"%>

	</div>
	<!-- wrapper end -->

</body>

<script type="text/javascript">
function boardUpdate(){
	updateForm.submit();
	alert('수정되었습니다.');
}

</script>
</html>