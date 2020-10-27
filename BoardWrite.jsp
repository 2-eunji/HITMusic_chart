<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
#content {
	margin: 20px 100px 20px 100px;
	text-align: center;
	height: 45%;
}

#table {
	width: 600px;
	margin-left: 30%;
	border: 1px solid black;
	border-collapse: collapse;
}
</style>
<link href="style.css" rel="stylesheet" type="text/css">
<meta charset="UTF-8">
<title>글 등록</title>
</head>
<body>

	<div id="wrapper">

		<!-- header -->
		<%@ include file="Header.jsp"%>

		<div id="content">
		<h1>게시글 작성</h1>
		<br>
			<form action="boardWrite" method="post" name="boardWriteForm"
				enctype="multipart/form-data">
				<!-- enctype="multipart/form-data"는 request.getParameter()로 받지 못한다. -->
				<input type="hidden" name="loginId">
				<table id="table">
					<tr>
						<th>분류</th>
						<td><select name="bPart">
								<option value="none">=== 선택 ===</option>
								<option value="공지">공지</option>
								<option value="발표">발표</option>
						</select></td>
					</tr>
					<tr>
						<th>제목</th>
						<td><input type="text" name="bTitle" size="39"></td>
					</tr>
					<tr>
						<th>내용</th>
						<td><textarea rows="20" cols="40" name="bContent"></textarea></td>
					</tr>
					<tr>
						<th>첨부파일</th>
						<td><input type="file" name="bFile"></td>
					</tr>
				</table>
			</form>
			<br />
			<button onclick="boardWrite()">글등록</button>
		</div>
		<!-- content end -->

		<div id="nav"></div>
		<!-- nav end -->

		<!-- footer -->

		<%@ include file="Footer.jsp"%>

	</div>
	<!-- wrapper end -->

</body>

<script>
	function boardWrite() {
		boardWriteForm.submit();
	}
</script>

</html>