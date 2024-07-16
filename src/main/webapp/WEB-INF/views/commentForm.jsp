<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 상세 보기</title>
</head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
	crossorigin="anonymous"></script>

<style>
body {
	background: #FFF0F0;
}

header {
	width: 100%;
	height: 140px;
	background-color: skyblue;
	border: 2px solid;
	text-align: center;
	padding-top: 6px;
}

#post {
	width: 500px;
	height: 450px;
	border: 1px solid black;
	text-align: center;
	margin-left: 400px;
	border-collapse: collapse;
	border-radius: 10px;
}

#post th {
	font-weight: bold;
	color: black;
	background-color: deepskyblue;
	border-bottom: 1px solid black;
}

#post td {
	border-bottom: 1px solid rgba(0, 0, 0, .1);
	background: #fff;
}

footer {
	margin-left: 40px;
	margin-top: 180px;
	height: 100px;
	text-align: center;
	margin-top: 180px;
}

section {
	text-align: center;
}

#comments {
	text-align: left;
	margin-left: 70px;
}

#comments td {
	border-bottom: 1px solid rgba(0, 0, 0, .1);
}
</style>
<body>
	<header>
		<a href="/tripMaster"><img src="./resources/img/logo.jpeg">
		</a>

	</header>

	<section>
		<br>

		<h1>글 상세보기</h1>
		<br>
		<table id="post">

			<tr>
				<th>글 번호</th>
				<td>${rlist.no }</td>
			</tr>

			<tr>
				<th>가게 이름</th>
				<td>${rlist.name }</td>
			</tr>
			<tr>
				<th>지역명</th>
				<td>${rlist.region }</td>
			</tr>
			<tr>
				<th>한줄 소개</th>
				<td>${rlist.contents }</td>
			</tr>
			<tr>
				<th>별점</th>
				<td>${rlist.star }</td>
			</tr>
			<tr>
				<th>작성자</th>
				<td>${rlist.writer }</td>
			</tr>

			<tr>
				<th>등록 날짜</th>
				<td style="border-bottom: 1px solid black;">${rlist.up_date }</td>
			</tr>
		</table>
		<br>

		<div id="a">
			<form action="back" method="get">
				<input type="hidden" name="sWord" value="${sWord }"> <input
					type="submit" value="뒤로">
			</form>
		</div>



		<br>
		<div id="comments">
			<h2>댓글</h2>
			<br>
			<c:forEach items="${cList }" var="c" varStatus="status">
				<table>
					<td>${c.c_writer}:</td>
					<td>${c.c_contents}</td>
				</table>
			</c:forEach>
	</section>
	<footer>
		<form action="comSave" method="post">
			<input type="hidden" value="${no}" name="ny"> <input
				type="hidden" name="sWord" value="${sWord }"> <input
				type="hidden" value="${rlist.no}" name="c_no"> <input
				type="text" name="c_writer" value="ㅇㅇ" size="10"> <input
				type="text" name="c_contents" placeholder="댓글을 입력하세요" size="50">
			<input class="btn btn-primary" type="submit" value="댓글 작성">
		</form>
	</footer>
	</div>
</body>
</html>
<script>
	
</script>