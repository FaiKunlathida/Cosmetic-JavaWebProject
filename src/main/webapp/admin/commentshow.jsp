<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Comment</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f0f2f5;
	margin: 0;
	padding: 0;
}

.forum-container {
	width: 600px;
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

.comment-form input[type="text"] {
	width: 100%;
	padding: 8px;
	margin-top: 5px;
	margin-bottom: 10px;
	border: 1px solid #dddfe2;
	border-radius: 4px;
	box-sizing: border-box;
}

.comment-form input[type="submit"] {
	background-color: #365899;
	color: #fff;
	padding: 10px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

.comment-form input[type="submit"]:hover {
	background-color: #1e4a7d;
}
</style>
</head>
<body>
	<div class="forum-container">
		<h1>Comment for everyone?</h1>

		<c:forEach items="${comlist}" var="com">
			<div class="forum-item">
				<div class="forum-content">
					<p>
						<strong>Name:</strong> ${com.fname}
					</p>
					<p>
						<strong>Comment:</strong> ${com.detail_comment}
					</p>
					<p>
						<strong>Like:</strong>${com.likeCount} <a href="/commentlove?id=${com.comment_id}&love=${com.likeCount + 1}">
						<img
							id="likeImg${com.comment_id}" src="../img/heart_empty.png"
							alt="Like" style="width: 20px; height: 20px;">
							</a>		
					</p>
					<p>
						<strong>Post Date:</strong> ${com.post_date}
					</p>
				</div>
			</div>
		</c:forEach>
		
		<form action="/commentadd">
									<input type="hidden" name="id" value="1">
									<div class="mb-3">
										<input type="text" class="form-control" id="detail"
											name="detail" placeholder="เขียนคอมเมนต์"> <input
											type="submit" value="Submit">
									</div>
								</form>





		<div class="comment-form">
			<form action="/commentadd">
				<label for="lname">Write a comment:</label><br> <input
					type="text" id="lname" name="lname"><br> <input
					type="submit" value="Submit">
			</form>
		</div>
	</div>
</body>
</html>
