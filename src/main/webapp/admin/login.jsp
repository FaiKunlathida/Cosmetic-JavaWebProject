<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="<c:url value="css/bootstrap.min.css"/>">
<meta charset="UTF-8">
<title>SkinSevvy</title>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

<style type="text/css">

body{
	min-width: 100%;
	background-image: url('../image/bgg2.jpg');
	 background-size: cover;
            backdrop-filter: blur(50%);
}

.pro-e{
	background-color: white;
	padding: 40px 100px;
	margin: 150px 450px;
	border-radius: 30px;
}
.pro-e h1, .button-edit {
	text-align: center;
}

.pro-e label{S
    font-weight: bold;
}
.link-regis {
	text-align: center;
	color: black;
	margin-top: 10px;
}



</style>
</head>
<body>

<%-- <div><jsp:include page="nav.jsp" /></div> --%>
<!-- <a href="/fpage" onclick="history.back()"><i class="fas fa-arrow-left" style="color:white; font-size:30px; padding:40px 0 0px 40px;"></i> </a>
 -->
<form action="/form_login" class="pro-e" method="post">
    <h1>Login</h1>
    <div class="mb-3">
        <label for="exampleFormControlInput1" class="form-label">Username</label>
        <input name="username" type="text" class="form-control" id="exampleFormControlInput1" placeholder="username" required>
    </div>
    <div class="mb-3">
        <label for="exampleFormControlInput1" class="form-label">Password</label>
        <input name="password" type="password" class="form-control" id="exampleFormControlInput1" placeholder="password" required>
    </div>
    <p style="color: red">${message}</p>
    <input style="background-color: #DB7093; color:white;" type="submit" class="form-control" id="exampleFormControlInput1" value="login">
    <div class="link-regis">
        <a href="/register" class="lregis" style="color: black;"><u>Register?</u></a>
    </div>
</form>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>