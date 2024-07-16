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
.adv {
	width: 300px;
	heigth: 50px;
}

#ad {

	margin-left:20px;
}
.containers {
	margin-top: 15px;
}
</style>
<body>
	<header>
		<a href="/tripMaster"> <img src="./resources/img/logo.jpeg">
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
	<div id="ad">

		<img src="./resources/img/1.jpg" class="adv"> <img
			src="./resources/img/3.jpg" class="adv"> <img
			src="./resources/img/10.jpg" class="adv"> <img
			src="./resources/img/2.jpg" class="adv"> <img
			src="./resources/img/4.jpg" class="adv"> <img
			src="./resources/img/5.jpg" class="adv"> <img
			src="./resources/img/6.jpg" class="adv"> <img
			src="./resources/img/7.jpg" class="adv"> <img
			src="./resources/img/8.jpg" class="adv"> <img
			src="./resources/img/9.jpg" class="adv">
			<img
			src="./resources/img/11.jpg" class="adv">
			<img
			src="./resources/img/12.jpg" class="adv">
 
	</div>
	<div class="containers">
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
			return false;
		} else {
			return true;
		}

	}
</script>