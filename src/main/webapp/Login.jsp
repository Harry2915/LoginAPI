<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">

    <title>Registration</title>
</head>
<style>
    .login-clean form {
  max-width: 320px;
  width: 90%;
  margin: 0 auto;
  background-color: #ffffff;
  margin-top: 10%;
  padding: 40px;
  border-radius: 4px;
  color: #505e6c;
  box-shadow: 1px 1px 5px rgba(0,0,0,0.1);
}

body {
  margin: 0;
  font-family: var(--bs-font-sans-serif);
  font-size: 1rem;
  font-weight: 400;
  line-height: 1.5;
  color: #212529;
  background-color: #fff;
  -webkit-text-size-adjust: 100%;
  -webkit-tap-highlight-color: transparent;
  
 
}

:root {
  --bs-blue: #0d6efd;
  --bs-indigo: #6610f2;
  --bs-purple: #6f42c1;
  --bs-pink: #d63384;
  --bs-red: #dc3545;
  --bs-orange: #fd7e14;
  --bs-yellow: #ffc107;
  --bs-green: #198754;
  --bs-teal: #20c997;
  --bs-cyan: #0dcaf0;
  --bs-white: #fff;
  --bs-gray: #6c757d;
  --bs-gray-dark: #343a40;
  --bs-primary: #0d6efd;
  --bs-secondary: #6c757d;
  --bs-success: #198754;
  --bs-info: #0dcaf0;
  --bs-warning: #ffc107;
  --bs-danger: #dc3545;
  --bs-light: #f8f9fa;
  --bs-dark: #212529;
  --bs-font-sans-serif: system-ui,-apple-system,"Segoe UI",Roboto,"Helvetica Neue",Arial,"Noto Sans","Liberation Sans",sans-serif,"Apple Color Emoji","Segoe UI Emoji","Segoe UI Symbol","Noto Color Emoji";
  --bs-font-monospace: SFMono-Regular,Menlo,Monaco,Consolas,"Liberation Mono","Courier New",monospace;
  --bs-gradient: linear-gradient(180deg, rgba(255, 255, 255, 0.15), rgba(255, 255, 255, 0));
}
.alert {
  padding: 10px;

 
}

</style>
<script>
 function validateForm() {
var email=document.getElementById("email").value;
var pass=document.getElementById("pass").value;
if (email == "") {
            document.getElementById("blankMsg").innerHTML = "*Email Required";
            document.getElementById("blankMsg").style.padding = "5px";
            document.getElementById('email').style.borderColor = "red";
            button.disabled=true;
            return false;
        } 
        else {
            document.getElementById("blankMsg").innerHTML = "";
            document.getElementById('email').style.borderColor = "";
            document.getElementById("blankMsg").style.padding = "0px";
            button.disabled=false;
        }
        if (pass == "") {
            document.getElementById("blankMsg").innerHTML = "*Password Required";
            
            
            document.getElementById('pass').style.borderColor = "red";
            document.getElementById("blankMsg").style.padding = "5px";
            button.disabled=true;
            return false;
        }else {
            document.getElementById("blankMsg").innerHTML = "";
            document.getElementById('pass').style.borderColor = "";
            document.getElementById("blankMsg").style.padding = "0px";
            button.disabled=false;
        }

    }

</script>
<body>

    <section class="login-clean">
        <form action="Login" >
            <h2 class="visually"><strong>Login</strong> Form</h2>
            <div class="alert" style="padding: 2px;">
                <span id="blankMsg" style="border-color:rgb(104, 20, 20) ; background:rgb(255, 200, 200)"
                    onclick="hide(); return false"> </span>
            </div>
            <div class="illustration"><i class="icon ion-ios-locked-outline"></i></div>
            <div class="mb-3">
                <label for="email" class="form-label">Email address</label>
                <input type="email" class="form-control" id="email" placeholder="name@example.com" name="email"
                    id="email" onchange="validateForm()" >
            </div>
            <div class="mb-3">
                <label for="pass" class="form-label">Password</label>
                <input type="password" class="form-control" placeholder="Type your password" name="pass"
                    id="pass" onchange="validateForm()">
               
            </div>
            <div class="mb-3"> <button class="btn btn-danger d-block w-100" type="submit" name="button" id="button" disabled="true" ><strong>Log In</strong></button></div>
            Forgot your password?<a class="forgot" href="#"> Click Here</a>
        </form>
    </section>





    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
        crossorigin="anonymous"></script>


</body>

</html>