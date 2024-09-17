<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>SkinSevvy</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<style>
.navbar {
    position: fixed;
    width: 100%;
    padding: 0 40px;
    
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
    top :50px; /* เลื่อนดรอปดาวไปทางซ้ายอีก 1px */
    
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
</style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light">
    <div class="container-fluid">
        <!-- Logo -->
        <a class="navbar-brand" href="#">
            <img src="../img/logo.jpg" alt="logo" style="width: 150px;">
        </a>
        <form class="d-flex justify-content-start">
            <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" style="border-radius: 40px; width: 500px; height: 40px; padding: 20px;">
        </form>
        <div class="dropdown">
    <img class="profile-image" src="../img/profile.png" alt="profile">
    
    <div class="dropdown-content">
        <a href="/profile">${sessionScope.username}'s Profile</a>



        <a href="/fpage">Log out</a>
    </div>
</div>

    </div>
</nav>

<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/js/all.min.js"></script>
</body>
</html>
