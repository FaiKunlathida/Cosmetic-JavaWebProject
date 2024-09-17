<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
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

<style type="text/css">
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

.Addcommunity {
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

.topic {
	display: flex;
	flex-direction: column;
	justify-content: flex-start;
	align-items: flex-start; /* เปลี่ยนจาก center เป็น flex-start */
	width: 50%;
	height: auto;
	border: 1px solid #F2F3F5;
	padding: 50px;
}

.topic .button-group {
	display: flex;
	justify-content: center;
	width: 100%;
	margin-bottom: 30px;
}

.topic .button-group .button_text_img {
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	margin: 5px;
}

.topic h2 {
	width: 100%;
	height: 100%;
}
.topic h6 {
	width: 100%;
	height: 100%;
}

.topic .button-group .button_text_img button {
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

.btn-submit {
	background-color: pink;
	color: white;
	margin-right: 20px; /* ระยะห่างระหว่างปุ่ม */
	border-radius: 20px;
	width: 120px;
}

.btn-reset {
	background-color: #F2F3F5;
	color: pink;
	margin-right: 20px; /* ระยะห่างระหว่างปุ่ม */
	border-radius: 20px;
	width: 120px;
}

.btn-submit:hover, .btn-reset:hover {
	background-color: #B84C65;
	color: white;
}

.my-2 {
	margin-top: 40px;
}

.button.selected {
	background-color: #B84C65;
	color: white;
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
</style>
</head>
<body>

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


	<div class="Addcommunity my-2">

		<div class="topic my-2">
			<h2 style="color: pink; text-align: center;">เว็บบอร์ด</h2>

			<h6>ตั้งกระทู้ใหม่</h6>

			<p>
				<span style="color: red;">*</span> เลือกประเภทกระทู้ที่คุณต้องการ
			</p>

			<script>
				function selectType(type, buttonId) {
					// ให้เลือก type ที่เลือกไว้
					document.getElementById('selectedType').value = type;

					// ลบคลาส selected จากปุ่มที่เคยถูกเลือกไว้
					var buttons = document.querySelectorAll('.button');
					buttons.forEach(function(button) {
						button.classList.remove('selected');
					});

					// เพิ่มคลาส selected ให้กับปุ่มที่ถูกเลือก
					document.getElementById(buttonId).classList.add('selected');
				}
			</script>

			<form action="/addTopic" method="POST" class="w-100"
				onsubmit="return validateForm();">
				<input type="hidden" id="selectedType" name="type" value="" required>
				<div class="button-group">
					<div class="button_text_img">
						<button class="button" id="makeup1" type="button"
							onclick="selectType('เมคอัพ', 'makeup1')">
							<div class="img_button">
								<img src="../image/cream.png" alt="">
							</div>
							<p>เมคอัพ</p>
						</button>
					</div>
					<div class="button_text_img">
						<button class="button" id="makeup2" type="button"
							onclick="selectType('สกินแคร์', 'makeup2')">
							<div class="img_button">
								<img src="../image/highlighter.png" alt="">
							</div>
							<p>สกินแคร์</p>
						</button>
					</div>
					<div class="button_text_img">
						<button class="button" id="makeup3" type="button"
							onclick="selectType('ลิปสติก', 'makeup3')">
							<div class="img_button">
								<img src="../image/lipgloss.png" alt="">
							</div>
							<p>ลิปสติก</p>
						</button>
					</div>
					<div class="button_text_img">
						<button class="button" id="makeup4" type="button"
							onclick="selectType('โลชั่น', 'makeup4')">
							<div class="img_button">
								<img src="../image/lotion.png" alt="">
							</div>
							<p>โลชั่น</p>
						</button>
					</div>
				</div>

				<div class="mb-3">
					<label for="exampleFormControlInput1" class="form-label"> <span
						style="color: red;">*</span> หัวข้อกระทู้
					</label> <input type="text" class="form-control"
						id="exampleFormControlInput1" placeholder="กรอกหัวข้อกระทู้"
						name="tiltle" required>
				</div>
				<div class="mb-3">
					<label for="exampleFormControlInput1" class="form-label"><span
						style="color: red;">*</span> รูปพรีวิว</label> <input type="text"
						class="form-control" id="exampleFormControlInput1"
						placeholder="อัพโหลดรูปพรีวิว" name="image" required>
				</div>
				<div class="mb-3">
					<label for="exampleFormControlTextarea1" class="form-label">
						<span style="color: red;">*</span> รายละเอียดของกระทู้
					</label>
					<textarea class="form-control" id="exampleFormControlTextarea1"
						rows="3" placeholder="กรอกรายละเอียดของกระทู้" name="detail"
						required></textarea>
				</div>





				<div class="mb-3 d-flex justify-content-end">
					<button type="reset" class="btn btn-reset"
						onclick="window.location.href='/showAllCommunity'">ยกเลิก</button>

					<button type="submit" class="btn btn-submit">สร้างกระทู้</button>
				</div>
			</form>

			<script>
				function validateForm() {
					var type = document.getElementById('selectedType').value;
					var title = document
							.getElementById('exampleFormControlInput1').value;
					var image = document
							.getElementById('exampleFormControlInput2').value;
					var detail = document
							.getElementById('exampleFormControlTextarea1').value;

					if (type === "" || title === "" || image === ""
							|| detail === "") {
						alert("กรุณากรอกข้อมูลให้ครบทุกช่อง");
						return false;
					}

					return true;
				}
			</script>

		</div>
	</div>
</body>
</html>
