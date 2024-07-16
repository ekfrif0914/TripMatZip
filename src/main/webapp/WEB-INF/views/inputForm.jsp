<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kor">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>등록하기</title>
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
<link rel="stylesheet" type="text/css"
	href="./resources/css/inputForm.css">
	<style>
	

	
	</style>
<body>

	<header>
		<a href="/tripMaster">  <img src="./resources/img/logo.jpeg">
		</a>

	</header>
	<br>

	<section>
		<span> 리뷰 작성하기</span> <br> <br>
		<form action="inputSave" method="post">
			<table>

				<tr>
					<th>가게 이름</th>
					<td><input type="text" name="name" size="50" id="nname"></td>
				</tr>
				<tr>
					<th>지역명</th>
					<td><input type="text" name="region" id="rregion"></td>
				</tr>
				<tr>
					<th>한줄 소개</th>
					<td><textarea name="contents" cols="50" rows="5"
							id="ccontents"></textarea></td>
				</tr>
				<tr>
					<th>별점</th>
					<td><select name="star" id="sstar">
							<option value="">=== 선택 ===</option>
							<option value="5">5</option>
							<option value="4">4</option>
							<option value="3">3</option>
							<option value="2">2</option>
							<option value="1">1</option>
					</select></td>
				</tr>
				<tr>
					<th>작성자</th>
					<td><input type="text" name="writer" id="wwriter"></td>
				</tr>

				<tr>
					<th>비밀번호</th>
					<td><input type="password" name="pw" id="ppw"></td>
				</tr>

			</table>
			<br> <input type="submit" value="등록하기"
				onclick="return emptyChk() ">
		</form>
	</section>
	<br>


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
<script>
	const badWord = [ '바보', '멍청이', '똥개' ];
	var cnt = 0;
	function realChk() {
		if (confirm("등록하시겠습니까?")) {
			return true;
		} else {
			return false;
		}
	}

	function bChk() {
		const contents = document.querySelector('#ccontents').value

		for (var i = 0; i < badWord.length; i++) {
			for (var j = 0; j < contents.length; j++) {
				var kk = contents.indexOf(badWord[i], j)
				if (kk != -1) {
					cnt = 1;
					alert("욕설을 입력할 수 없습니다");
					cnt = 0;
					return false;
					break;
				}
			}
		}
		if (cnt == 0) {
			return true;
		}
	}
	
	function emptyChk() {
		const name = document.querySelector('#nname').value
		const region = document.querySelector('#rregion').value
		const contents = document.querySelector('#ccontents').value
		const star = document.querySelector('#sstar').value
		const writer = document.querySelector('#wwriter').value
		const pw = document.querySelector('#ppw').value

		if (name == "" || region == "" || contents == "" || star == ""
				|| writer == "" || pw == "") {
			alert("필수 항목을 입력하세요")
			return false;
		} else {
			if (bChk()) {

				if (realChk()) {
					return true;
				} else {
					return false;
				}

			} else {
				return false;
			}
		}
	}
</script>

</html>