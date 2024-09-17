<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" href="css/bootstrap.min.css"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">


<meta charset="UTF-8">
<title>SkinSevvy</title>
<style type="text/css">


body{
	min-width: 100%;
	background-image: url('image/bgg.jpg');
	 background-size: cover;
            backdrop-filter: blur(50%);
}
.re-e{
	background-color: white;	
	padding: 40px 100px;
	margin: 150px 450px;
	border-radius: 30px;
}
.re-e h1, .button-e {
	text-align: center;
}

footer{
    clear: both;
}
.pro-e label{
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

<%-- <jsp:include page="#" /> --%>
<a href="/fpage" onclick="history.back()"><i class="fas fa-arrow-left" style="color:white; font-size:30px; padding:40px 0 0px 40px;"></i> </a>
<form action="/form_register" class="re-e">

            <h1>Register</h1>
            <div class="mb-3">
                <label for="exampleFormControlInput1" class="form-label">Username</label>
                <input name="username" value="${message[1]}" type="text" class="form-control" id="exampleFormControlInput1" placeholder="" required>
            </div>
            <p style="color: ${message[2]} ; text-align:end ;  font-size:10px; ">${message[0]}</p>
            <div class="mb-3">
                <label for="exampleFormControlInput1" class="form-label">Password</label>
                <input name="password" type="tel" class="form-control" id="exampleFormControlInput1" placeholder="" required>
            </div>
            <div class="mb-3">
                <label for="exampleFormControlInput1" class="form-label">Confirm Password</label>
                <input name="password2" type="tel" class="form-control" id="exampleFormControlInput1" placeholder="" required>
            </div>
             <input name="status" type="text" value = "user" style="display: none;">
            <p style=" color:${message[4]} ; text-align:end;  font-size:10px; " >${message[3]}</p>
            
            <input style="background-color: #DB7093; color:white;" type="submit" value="Register" class="form-control submit" id="exampleFormControlInput1">
           
          
    </form>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>