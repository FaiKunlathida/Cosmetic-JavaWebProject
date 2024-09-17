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

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Prompt:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
	rel="stylesheet">

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cosmetics</title>
<link rel="icon" href="../image/logo_web.jpg" type="image/x-icon">

</head>
<body>
	<style type="text/css">
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
	background-color: 76C6C5;
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

a {
	text-decoration: none; /* เอาเส้นใต้ออก */
	text-align: center; /* จัดให้อยู่ตรงกลาง */
}
</style>

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




	<nav class="navbar navbar-expand-lg navbar-light">
		<div class="container-fluid">
			<!-- Logo -->
			<a class="navbar-brand" href="/showAllCommunity"> <img
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



	<div class="community">
		<%-- <h4>เว็บบอร์ด</h4>
		<h5>แหล่งคอมมูนิตี้รวมรีวิวจากผู้ใช้จริง</h5>
		<p>พื้นที่รีวิวเครื่องสำอางและสกินแคร์จากเพื่อน ๆ
			มาบอกผลลัพธ์หลังการใช้ พร้อมปรึกษาวิธีใช้กันได้ที่นี่เลย</p> --%>

		<div class="button-group">
			<div class="button_text_img">
				<a class="button" href="/showAllCommunity"> <!-- เปลี่ยนจาก button เป็น a และเพิ่ม href -->
					<div class="img_button">
						<img src="../image/cream.png" alt="">
					</div>
					<p>ทั้งหมด</p>
				</a>
			</div>
			<div class="button_text_img">
				<a class="button" href="/communityMekup"> <!-- เปลี่ยนจาก button เป็น a และเพิ่ม href -->
					<div class="img_button">
						<img src="../image/highlighter.png" alt="">
					</div>
					<p>เมคอัพ</p>
				</a>
			</div>
			<div class="button_text_img">
				<a class="button" href="/communityskincare"> <!-- เปลี่ยนจาก button เป็น a และเพิ่ม href -->
					<div class="img_button" style="border: 2px solid #B84C65;">
						<img src="../image/lipgloss.png" alt="">
					</div>
					<p style="color: pink">สกินแคร์</p>
				</a>
			</div>
			<div class="button_text_img">
				<a class="button" href="#"> <!-- เปลี่ยนจาก button เป็น a และเพิ่ม href -->
					<div class="img_button">
						<img src="../image/lotion.png" alt="">
					</div>
					<p>ไลฟ์สไตล์</p>
				</a>
			</div>
		</div>

	</div>

	<div class="container">

		<div class="add_com">
			<a href="/addNew" class="btn"> <i class='bx bx-edit'
				style='color: #fffafa'></i>ตั้งกระตู้
			</a>
		</div>

		<div class="row d-flex flex-wrap flex-md-row">
			<c:forEach items="${communitylist}" var="community">
				<c:choose>
					<c:when test="${community.type == 'สกินแคร์'}">
						<div class="col-md-3">
							<div class="card mb-4">
								<img src="${community.image}" class="card-img-top" alt="...">
								<div class="card-body">
									<div class="top">
										<a href="/detail/${community.cid}" class="card-title"><span>${community.tiltle}</span></a>
									</div>
									<div class="bottom">
										<div class="detail">
											<p class="card-text-type macup">${community.type}</p>
											<div class="datetime">
												<p class="card-text">
													<i class='bx bx-calendar'></i>
													${community.date.toString().split(' ')[0]}
												</p>
												<p class="card-text">
													<i class='bx bx-time-five'></i> ${community.time}
												</p>
											</div>
										</div>
										<div class="comment_love">
											<p class="card-text">
												<i class='bx bx-low-vision'></i> ${community.view}
											</p>
											<p class="card-text">
												<i class='bx bx-comment'></i> ${community.comment}
											</p>
											<p class="card-text">
												<span class="heart"> <i class='bx bxs-heart'></i>
													${community.love}
												</span>
											</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</c:when>
				</c:choose>
			</c:forEach>
		</div>
</body>
</html>
