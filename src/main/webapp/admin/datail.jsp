<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css'
	rel='stylesheet'>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cosmetics</title>
<link rel="icon" href="../image/logo_web.jpg" type="image/x-icon">

</head>
<body>
	<style type="text/css">
.container-fluid {
	margin-left: 100px;
	margin-right: 100px;
}

h5 {
	color: pink;
}

h4 {
	color: #B84C65;
}

.community {
	display: flex;
	flex-direction: column;
	align-items: center;
	margin-top: 20px;
	width: 100%;
}

.container .add_com {
	display: flex;
	justify-content: flex-end;
	margin-bottom: 20px;
	width: 100%;
}

.container .add_com a {
	background-color: pink;
	color: white;
	border-radius: 20px;
}

.add_comment .btn_add_comment a {
	background-color: pink;
	color: white;
	border-radius: 20px;
}

.container .add_com a:hover {
	background-color: #B84C65;
	color: white;
	border-radius: 20px;
}

.add_comment a:hover {
	background-color: #B84C65;
	color: white;
	border-radius: 20px;
}

.bx {
	margin-right: 5px;
}

.container {
	display: flex;
	justify-content: center;
	align-items: center;
	flex-wrap: wrap;
}

.card {
	width: 300px;
}

.card:hover {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.19);
}

.card-title {
	text-decoration: none;
	font-size: 18px;
}

.card-title span:hover {
	color: pink;
}

.card-body {
	height: 180px;
}

img {
	width: 300px;
	height: 300px;
}

.bottom {
	display: flex;
	flex-direction: column;
	justify-content: space-between;
	margin-top: 10px;
	flex-direction: column;
}

.bottom p {
	font-size: 14px;
}

.detail {
	display: flex;
	justify-content: space-between;
}

.comment_love {
	display: flex;
	justify-content: space-between;
}

.typecollor {
	width: 900px;
	height: auto;
}

.macup p, .not-macup p {
	text-align: center;
	margin: 0;
	padding: 0;
	width: 100%;
	font-size: 14px; /* ปรับขนาดตัวหนังสือตามที่ต้องการ */
	color: #fffafa; /* ใช้สีตามที่ต้องการ */
}

.macup {
	background-color: pink;
	color: #fffafa;
	border-radius: 4px;
	width: 10%;
	display: flex;
	justify-content: center;
	align-items: center;
}

.not-macup {
	background-color: #76C6C5;
	color: #fffafa;
	border-radius: 4px;
	width: 15%;
	display: flex;
	justify-content: center;
	align-items: center;
}

.Search {
	padding-right: 30px;
}

.bx-search {
	position: absolute;
	right: 10px;
}

.input-group {
	justify-content: flex-start;
	margin-right: 50px;
	width: 75%;
}

.heart i:hover {
	color: #FF2E2E;
}

.heart i:after {
	color: #FF2E2E;
}

.navbar {
	background-color: white;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
	display: flex;
	justify-content: space-between;
	align-items: center;
	margin-top: 0;
	margin-bottom: 0;
}

.navbar-brand img {
	width: 150px;
	height: 100px;
}

.btn_search {
	display: flex;
	align-items: center;
	justify-content: center; /* จัดให้อยู่ตรงกลางแนวนอน */
	margin: 0 auto; /* จัดให้อยู่ตรงกลางแนวตั้ง */
}

.btn_search .form-control {
	width: 450px; /* ลดความกว้างของ input search */
	border-radius: 5px;
	margin-left: 10px; /* ระยะห่างของ input กับ รูป */
	border: 2px solid #F2F3F5;
}

.community img {
	width: 50px; /* ปรับขนาดภาพให้เล็กลงเป็น 50x50 พิกเซล */
	height: 50px;
}

.community a {
	color: black;
	padding: 20px;
}

.con {
	display: flex;
	justify-content: center;
	flex-direction: column;
	align-items: center;
}

.con .img {
	width: 100%;
	height: 100%;
}

.con .img img {
	width: 100%;
	height: 100%;
	border-radius: 10px;
}

.detail_group {
	display: flex;
	justify-content: flex-start; /* ชิดขวา */
	gap: 10px; /* ระยะห่างระหว่างองค์ประกอบ */
	margin-bottom: 20px;
}

.datetime, .time, .view, .comment, .love {
	display: flex;
	align-items: center;
}

.text-detail {
	display: flex;
	justify-content: flex-start;
	align-items: center;
	height: auto;
	margin-bottom: 20px;
	margin-top: 20px;
	width: auto;
}

hr {
	border: 1.5px solid #F2F3F5;
}

.add_comment {
	display: flex;
	justify-content: space-between;
}

.allcomment {
	border: 1px solid #F2F3F5;
	margin-bottom: 30px;
	margin-top: 20px;
	border-radius: 10px;
}

.left_right {
	display: flex;
	justify-content: space-between;
	align-items: flex-start;
}

.left {
	width: 50%;
	margin-right: 40px;
}

.right {
	width: 50%;
}

.btn_comment {
	width: auto;
	height: 20px;
}

.btn_comment a {
	text-decoration: none;
	background-color: pink;
	color: white;
}

.btn_comment a .btn_add {
	background-color: pink;
	color: white;
}

.btn_comment a .btn_add:hover {
	background-color: #B84C65;
	color: white;
}

* {
	font-family: "Prompt", sans-serif;
}

.container-fluid {
	margin-left: 100px;
	margin-right: 100px;
}

h5 {
	color: pink;
}

.community {
	display: flex;
	flex-direction: column;
	align-items: center;
	margin-top: 20px;
}

.container .add_com {
	display: flex;
	justify-content: flex-end;
	margin-bottom: 20px;
	width: 100%;
}

.container .add_com a {
	background-color: pink;
	color: white;
	border-radius: 20px;
}

.container .add_com a:hover {
	background-color: #B84C65;
	color: white;
	border-radius: 20px;
}

.bx {
	margin-right: 5px;
}

.container {
	display: flex;
	justify-content: center;
	align-items: center;
	flex-wrap: wrap;
}

.card {
	width: 300px;
}

.card:hover {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.19);
}

.card-title {
	text-decoration: none;
	font-size: 18px;
}

.card-title span:hover {
	color: pink;
}

.card-body {
	height: 180px;
}

img {
	width: 300px;
	height: 300px;
}

.bottom {
	display: flex;
	flex-direction: column;
	justify-content: space-between;
	margin-top: 10px;
	flex-direction: column;
}

.bottom p {
	font-size: 14px;
}

.detail {
	display: flex;
	justify-content: space-between;
}

.comment_love {
	display: flex;
	justify-content: space-between;
}

.macup {
	background-color: pink;
	color: #fffafa;
	border-radius: 4px;
}

.not-macup {
	background-color: #76C6C5;
	color: #fffafa;
	border-radius: 4px;
}

.Search {
	padding-right: 30px;
}

.bx-search {
	position: absolute;
	right: 10px;
}

.input-group {
	justify-content: flex-start;
	margin-right: 50px;
	width: 75%;
}

.heart i:hover {
	color: #FF2E2E;
}

.heart i:after {
	color: #FF2E2E;
}

.navbar {
	background-color: white;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
	display: flex;
	justify-content: space-between;
	align-items: center;
	margin-top: 0;
	margin-bottom: 0;
}

.navbar-brand img {
	width: 150px;
	height: 100px;
}

.dropdown {
	position: relative;
	display: inline-block;
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: #DB7093;
	width: 160px;
	border-radius: 15px;
	z-index: 1;
	left: -100px;
	top: 50px; /* เลื่อนดรอปดาวไปทางซ้ายอีก 1px */
}

.dropdown:hover .dropdown-content {
	display: block;
}

.dropdown-content a {
	color: white;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
}

.dropdown-content a:hover {
	background-color: #ffcfcf;
	border-radius: 15px;
}

.btn_search {
	display: flex;
	align-items: center;
	justify-content: center; /* จัดให้อยู่ตรงกลางแนวนอน */
	margin: 0 auto; /* จัดให้อยู่ตรงกลางแนวตั้ง */
}

.btn_search .form-control {
	width: 450px; /* ลดความกว้างของ input search */
	border-radius: 5px;
	margin-left: 10px; /* ระยะห่างของ input กับ รูป */
	border: 2px solid #F2F3F5;
}

.navbar .container .navbar-brand img {
	width: 150px;
	height: 100px;
}

.community img {
	width: 50px; /* ปรับขนาดภาพให้เล็กลงเป็น 50x50 พิกเซล */
	height: 50px;
}

.community a {
	color: black;
	padding: 20px;
}

.datetime {
	display: flex;
	justify-content: flex-end; /* ชิดขวา */
	gap: 10px;
}

.my-2 {
	margin-top: 40px;
}

.button.selected {
	background-color: #B84C65;
	color: white;
}

.button-group {
	display: flex;
	justify-content: center;
	width: 100%;
	margin-bottom: 30px;
	margin-top: 30px;
}

.button-group .button_text_img {
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	margin: 5px;
	margin-left: 40px;
}

.button-group .button_text_img button {
	width: 100px;
	height: 100px;
	background-color: white;
	border: none;
	margin-top: 5px;
}

.img_button {
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100px;
	border-radius: 50%;
	width: 100px;
	border: 2px solid #F2F3F5;
}

.img_button:hover {
	border: 2px solid pink;
}

.img_button img {
	width: 60px;
	height: 60px;
}

.button_text_img button .img_button img {
	text-align: center;
}

.button_text_img button p {
	color: black;
	text-align: center;
}

.button_text_img button p:hover {
	color: #B84C65;
}

.button_text_img button {
	position: relative;
	width: 100px;
	height: 100px;
	background-color: white;
	border: none;
	margin-top: 5px;
}

.button_text_img button:hover {
	cursor: pointer;
}

.button_text_img button:active {
	color: #B84C65;
}

.button_text_img button p {
	color: black;
	text-align: center;
	transition: color 0.3s;
}

.button_text_img button .img_button {
	text-align: center;
}

.button_text_img button .img_button img {
	text-align: center;
}

.button_text_img button.selected {
	background-color: #B84C65;
	color: white;
}

.button_text_img button.selected p {
	color: #B84C65;
}

.button_text_img button.selected .img_button {
	color: #B84C65;
	border: 2px solid #B84C65;
}

.dropdown {
	display: flex; /* ใช้ Flexbox */
	align-items: center; /* จัดกลางตามแนวตั้ง */
}

.profile-image {
	width: 50px;
	height: 50px;
	border-radius: 50%; /* ทำให้รูปเป็นวงกลม */
	object-fit: cover; /* ปรับขนาดรูปให้พอดีกับขนาดที่กำหนด */
	margin-right: 10px; /* ระยะห่างของรูปกับข้อความ */
}

.dropdown p {
	margin: 0; /* กำหนดให้ไม่มีระยะห่างรอบข้อความ */
}

.forum-container {
	width: 100%;
	margin: 20px auto;
}

.forum-item {
	background-color: #f9f9f9;
	border: 1px solid #ddd;
	border-radius: 10px;
	padding: 20px;
	margin-bottom: 20px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	transition: transform 0.3s;
}

.forum-item:hover {
	transform: translateY(-5px);
}

.forum-content {
	padding: 10px;
}

.forum-content p {
	margin: 10px 0;
}

.forum-content strong {
	color: #333;
}

.like-link {
	color: #365899;
	text-decoration: none;
}

.like-link:hover {
	text-decoration: underline;
}

.comment-form {
	background-color: #fff;
	border: 1px solid #dddfe2;
	border-radius: 8px;
	padding: 10px;
	margin-top: 20px;
}

.comment-form label {
	font-weight: bold;
}
</style>

	<nav class="navbar navbar-expand-lg navbar-light">
		<div class="container-fluid">
			<!-- Logo -->
			<a class="navbar-brand" href="#"> <img
				src="../image/logo_white2.svg" alt="">
			</a>
			<form class="d-flex justify-content-start">
				<input class="form-control me-2" type="search" placeholder="Search"
					aria-label="Search"
					style="border-radius: 40px; width: 500px; height: 40px; padding: 20px;">
			</form>
			<div class="dropdown">
				<img class="profile-image" src="../image/profile.png" alt="profile">
				<p>${sessionScope.username}</p>

				<div class="dropdown-content">
					<a href="/profile">${sessionScope.username}'s Profile</a> <a
						href="/fpage">Log out</a>
				</div>
			</div>
		</div>
	</nav>



	<div class="container">
		<div class="community">
			<div>


				<div class="typecollor">




					<div class="left_right">


						<div class="left">
							<div class="con">
								<div class="img">

									<img src="${community.image}" class="card-img-top" alt="...">

								</div>


							</div>
							<hr>
						</div>

						<div class="right">
							<h4>${community.tiltle}</h4>

							<c:choose>
								<c:when test="${community.type == 'เมคอัพ'}">
									<p class="card-text-type macup">${community.type}</p>
								</c:when>
								<c:otherwise>
									<p class="card-text-type not-macup">${community.type}</p>
								</c:otherwise>
							</c:choose>

							<div class="time_date_love_view_comment">

								<div class="detail_group">
									<div class="datetime">
										<p class="card-text">
											<i class='bx bx-calendar'></i>
											${community.date.toString().split(' ')[0]}
										</p>


									</div>
									<div class="time">
										<p class="card-text">
											<i class='bx bx-time-five'></i> ${community.time}
										</p>
									</div>



									<div class="view">
										<p class="card-text">
											<i class='bx bx-low-vision'></i> ${community.view}
										</p>

									</div>
									<div class="comment">
										<p class="card-text">
											<i class='bx bx-comment'></i> ${community.comment}
										</p>

									</div>
									<div class="love">
										<p class="card-text">
											<span class="heart">
												<form action="/postlove" method="post">
													<input type="hidden" name="id" value="${community.cid}">
													<input type="hidden" name="uid"
														value="${sessionScope.id != null ? sessionScope.id : ''}">

													<input type="hidden" name="love" value="${community.love}">
													<button type="submit" class="btn" id="loveButton">
														<i class='bx bxs-heart'></i> ${community.love}
													</button>
												</form>
											</span>
										</p>
									</div>


								</div>
							</div>
							<div class="text-detail">

								<p>${community.detail}</p>

							</div>


							<div class="text_com">
								<p>${community.comment}ความคิดเห็น</p>
							</div>




							<div class="allcomment">

								<form action="/commentadd" method="get">
									<input type="hidden" name="id" value="${community.cid}">
									<input type="hidden" name="fname"
										value="${sessionScope.username}">
									<div class="mb-3">
										<input type="text" class="form-control" id="detail"
											name="detail" placeholder="เขียนคอมเมนต์"> <input
											type="submit" value="Submit">
									</div>
								</form>

								<div class="forum-container">
									<h1>Comment for everyone?</h1>

									<c:forEach items="${comlist}" var="com">
										<div class="forum-item">
											<div class="forum-content">
												<p>
													<strong>Name:</strong> ${com.fname}xxxx
												</p>
												<p>
													<strong>Comment:</strong> ${com.detail_comment}
												</p>
												<p>
													<strong>Like:</strong>${com.likeCount} <a
														href="/commentlove?id=${com.comment_id}&love=${com.likeCount + 1}&cid=${community.cid}">
														<img id="likeImg${com.comment_id}"
														src="../img/heart_empty.png" alt="Like"
														style="width: 20px; height: 20px;">
													</a>
												</p>
												<p>
													<strong>Post Date:</strong> ${com.post_date}
												</p>
											</div>
										</div>
									</c:forEach>


								</div>

							</div>


						</div>
					</div>
				</div>


			</div>
</body>
</html>
