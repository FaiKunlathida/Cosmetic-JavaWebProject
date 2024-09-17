<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/bootstrap.min.css" />
<meta charset="UTF-8">
<title>Edit Profile Example</title>
<link rel="stylesheet" type="text/css" href="../css/profile.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
</head>

<body>
	<div class="container mt-5">

		<div class="row d-flex justify-content-center">

			<div class="col-md-7">

				<div class="text-center">
					<img src="../img/profile.png" width="200" class="rounded-circle">
				</div>

				<div class="text-center mt-3">
					<h4 class="mt-2 mb-0">${sessionScope.username}</h4>
					<div class="buttons">
						<!-- Trigger modal button -->
						<button type="button" class="btn btn-outline-primary px-4"
							data-bs-toggle="modal" data-bs-target="#editProfileModal">
							Edit Profile</button>


					</div>

				</div>
			</div>
		</div>
		<div class="mypostmylike">
			<a href="#" id="allpost-link">All</a> <a href="#">Liked</a>
		</div>
		
		<div class="row d-flex flex-wrap flex-md-row">
    <c:forEach items="${communitylist}" var="community">
        <div class="col-md-3">
            <div class="card mb-4">
                <img src="${community.image}" class="card-img-top" alt="...">
                <div class="card-body">
                    <div class="top">
                        <a href="/detail/${community.cid}" class="card-title"><span>${community.tiltle}</span></a>
                    </div>
                    <div class="bottom">
                        <div class="detail">
                            <c:choose>
                                <c:when test="${community.type == 'เมคอัพ'}">
                                    <p class="card-text-type macup">${community.type}</p>
                                </c:when>
                                <c:otherwise>
                                    <p class="card-text-type not-macup">${community.type}</p>
                                </c:otherwise>
                            </c:choose>
                            <div class="datetime">
                                <p class="card-text">
                                    <i class='bx bx-calendar'></i> ${community.date.toString().split(' ')[0]}
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
                                <span class="heart"> <i class='bx bxs-heart'></i> ${community.love}</span>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </c:forEach>
</div>

	</div>

	</div>

	<!-- Edit Profile Modal -->
	<div class="modal fade" id="editProfileModal" tabindex="-1"
		aria-labelledby="editProfileModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="editProfileModalLabel">Edit
						Profile</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<form action="/updateprofile" method="post">
						<div class="mb-3">
							<label for="edit-username" class="col-form-label">Username:</label>
							<input type="text" class="form-control" id="edit-username"
								name="username"
								value="${sessionScope.username != null ? sessionScope.username : ''}">
						</div>
						<div class="mb-3">
							<label for="new-password" class="col-form-label">New
								Password:</label> <input type="password" class="form-control"
								id="new-password" name="password"
								value="${sessionScope.password != null ? sessionScope.password : ''}">
						</div>
						<div class="mb-3">
							<label for="confirm-password" class="col-form-label">Confirm
								New Password:</label> <input type="password" class="form-control"
								id="confirm-password" name="confirmPassword">
						</div>
						<input type="hidden" name="id"
							value="${sessionScope.id != null ? sessionScope.id : ''}">

						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-bs-dismiss="modal">Close</button>
							<button type="submit" class="btn btn-primary" id="Save-Changes">Save
								Changes</button>
						</div>
					</form>
				</div>

			</div>
		</div>
	</div>
	
	
	




	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
</body>
</html>
