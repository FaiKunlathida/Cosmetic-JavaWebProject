<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SkinSevvy</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<style>
body {
	background-color: white;
}

#logo {
	width: 150px;
	margin: 15px 50px 0 70px;
}

nav {
	width: 70%;
}

.container {
	margin-top: 3%;
	margin-left: 3%;
}

.nav-item {
	margin-left: 15px;
}

.navbar-nav {
	padding-left: 30%;
}

#imgf2 {
	position: absolute;
	top: 0;
	left: 0;
	width: 500px;
	margin-top: 30px;
	border-radius: 100% 100% 0 0;
}

#imgf3 {
	position: absolute;
	width: 400px;
	border-radius: 100% 100% 0 0;
	margin: 155px 60px 0 320px;
}

#textfistpag h1, h3 {
	padding-left: 30%;
	color: #cf7b7f;
}

.navbar-nav {
	margin-left: 600px;
}
</style>
</head>
<body>
	<nav class="navbar navbar-expand-lg">
		<div
			class="container-fluid d-flex justify-content-between align-items-center">
			<a class="navbar-brand" href="#"> <img src="../image/logo.jpg"
				alt="logo" id="logo">
			</a>
			<ul class="navbar-nav ">
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="/login">Login</a></li>
				<li class="nav-item"><a class="nav-link" href="/register">Register</a>
				</li>
			</ul>
		</div>
	</nav>

	<div class="container ">
		<div class="row">
			<div class="col">
				<div class="imgfp">
					<div style="position: relative;">
						<img src="../image/pigf1.png" id="imgf2"> <img
							src="../image/pigf2.jpg" id="imgf3">
					</div>
				</div>

			</div>
			<div class="col" id="textfistpage" style="margin-top: 10%;">
				<h1 style="padding-left: 30%; font-size: 50px; color: #DB7093;">
					Welcome!
					</h3>
					<h3>Let us guide you through the world of cosmetics and
						skincare to help you discover your perfect routine.
				</h1>
			</div>

		</div>
	</div>

</body>
</html>