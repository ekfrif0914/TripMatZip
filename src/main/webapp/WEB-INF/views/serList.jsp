<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kor">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Trip Master</title>
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
<link rel="stylesheet" type="text/css" href="./resources/css/main.css">
<style>
#list {
	margin-left:240px;
	text-align: center;
}

table, td, tr, th {
	border: 1px solid;
}

tr:hover {
	background-color: beige;
}
</style>
<body>
	<header>
		<a href="/tripMaster">  <img src="./resources/img/logo.jpeg">
		</a>

	</header>
	<br>

	<section>
		<button type="button" class="btn btn-outline-primary" id="insert"
			onclick="location.href='input'">리뷰 작성하기</button>

	</section>
	<br>

	<nav class="navbar" style="background-color: #e3f2fd;">
		<div class="container-fluid">
			<form class="d-flex" role="search" method="get" action="search">
				<input class="form-control me-2" type="search"
					placeholder="${sWord}" aria-label="Search" name="sWord" id="bar">
				<button id="ser" class="btn btn-outline-success" type="submit"
					onclick="return execute()">검색</button>
				</a>
			</form>
		</div>
	</nav>
	<br>
	<div id="list" class="display">
		<table border=1 id="tlist">
			<thead>
				<tr>
					<th>No</th>
					<th>가게 이름</th>
					<th>지역명</th>
					<th>한줄 소개</th>
					<th>별점</th>
					<th>작성자</th>
					<th>등록 날짜</th>
					<th>수정</th>
					<th>삭제</th>
					<th>상세 보기</th>
				</tr>
			</thead>
			<tbody>

				<tr>
					<c:forEach items="${sList }" var="reviewvo" varStatus="status">
						<td>${status.count}</td>
						<td>${reviewvo.name }</td>
						<td>${reviewvo.region }</td>
						<td>${reviewvo.contents }</td>
						<td>${reviewvo.star }</td>
						<td>${reviewvo.writer }</td>
						<td>${reviewvo.up_date }</td>

						<form action="update" method="post">
							<td><input type="submit" value="수정" onclick="return pwChk('${reviewvo.pw}')"></td>
							<input type="hidden" name="no" value="${reviewvo.no}"> <input
								type="hidden" name="sWord" value="${sWord }">
						</form>

						<form action="delete" method="post" id="myform">
							<td><input type="submit" value="삭제" onclick="return pwChk('${reviewvo.pw}')"></td>
							<input type="hidden" name="no" value="${reviewvo.no}"> <input
								type="hidden" name="sWord" value="${sWord }"> 
						</form>
						<form action="rDetail" method="get">
						<td><input type="submit" value="상세 보기"> </td>
					
						<input type="hidden" name="no" value="${reviewvo.no}"> 
						<input type="hidden" name="sWord" value="${sWord }"> 
						</form>
				</tr>
				</c:forEach>
				
			</tbody>
		</table>
	</div>
	<div class="container">
		<footer class="py-3 my-4">
			<ul class="nav justify-content-center border-bottom pb-3 mb-3">
				<li class="nav-item"><a href="#"
					class="nav-link px-2 text-body-secondary">Home</a></li>
				<li class="nav-item"><a href="#"
					class="nav-link px-2 text-body-secondary">Features</a></li>
				<li class="nav-item"><a href="#"
					class="nav-link px-2 text-body-secondary">Pricing</a></li>
				<li class="nav-item"><a href="#"
					class="nav-link px-2 text-body-secondary">FAQs</a></li>
				<li class="nav-item"><a href="#"
					class="nav-link px-2 text-body-secondary">About</a></li>
			</ul>
			<p class="text-center text-body-secondary">© 2024 Trip Master,
				Inc</p>
		</footer>
	</div>

</body>

</html>
<script>
	function execute() {
		const search = document.querySelector('#bar').value;

		if (search == "") {
			console.log("1")
			return false;
		} else {
			console.log("2")
			return true;
		}

	}

	function pwChk(pw) {

		var str = prompt('비밀번호를 입력하세요', '');

		if (str == null) {
			return false;
		} else if (str == pw) {
			return true;
		} else if (str != pw) {
			alert("비밀번호가 맞지 않습니다")
			return false;
		}
	}

	/* 	function pwChang(This,  pw) {
	 console.log("확인");
	 var idx = This.closest('tr').rowIndex
	
	 console.log(pw)
	 var p = pw;
	 console.log(p);
	 const table = document.querySelector('#tlist');
	 var newRow = table.insertRow(idx + 1);
	 var newCell = newRow.insertCell(0);
	 var newCell1 = newRow.insertCell(1);
	 var newCell2 = newRow.insertCell(2);

	 newCell.colSpan = "6"
	 newCell1.colSpan = "2"

	 newCell.innerHTML = '<span>' + "<게시물 삭제>비밀번호 확인" + '</span>';
	 console.log("확인2")
	 newCell1.innerHTML = '<input type="text" id="inputpw">';
	 newCell2.innerHTML = '<input type="submit" value="확인" id="yes">';

	 //document.querySelector('#yes').addEventListener('click', pwChk(p);)
	
	 return false;
	 } */
	 
</script>