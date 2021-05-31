<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
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
   box-shadow: 0 4px 8px 0 rgba(245, 87, 87, 0.2);
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
     var pw1 = document.getElementById("pass").value;
     var pw2 = document.getElementById("cpass").value;

     if (pw1 == "") {
         document.getElementById("blankMsg").innerHTML = "*Password Required";
         document.getElementById('pass').style.borderColor = "red";
         button.disabled=true;
         return false;
     }else {
         document.getElementById("blankMsg").innerHTML = "";
         document.getElementById('pass').style.borderColor = "";
         button.disabled=false;
     }


     //check empty confirm password field  
     if (pw2 == "") {
         document.getElementById("blankMsg").innerHTML = "*Confirm Password Required";
         document.getElementById('cpass').style.borderColor = "red";
         button.disabled=true;
         return false;
     }else {
         document.getElementById("blankMsg").innerHTML = "";
         document.getElementById('cpass').style.borderColor = "";
         button.disabled=false;
     }


     //minimum password length validation  
     if (pw1.length < 8) {
         document.getElementById("blankMsg").innerHTML = "*Password must contain atleast 8 characters";
         document.getElementById('pass').style.borderColor = "red";
        
         button.disabled=true;
         return false;
     }else {
         document.getElementById("blankMsg").innerHTML = "";
         document.getElementById('pass').style.borderColor = "";
         button.disabled=false;
     }


     //maximum length of password validation  
     if (pw1.length > 15) {
         document.getElementById("blankMsg").innerHTML = "*Password length must not exceed 15 characters";
         document.getElementById('pass').style.borderColor = "red";
         button.disabled=true;
         return false;
     }else {
         document.getElementById("blankMsg").innerHTML = "";
         document.getElementById('pass').style.borderColor = "";
         button.disabled=false;
     }


     if (pw1 != pw2) {
         document.getElementById("blankMsg").innerHTML = "*Password and Confirm Password Did Not Match";
         document.getElementById('pass').style.borderColor = "red";
         document.getElementById('cpass').style.borderColor = "red";
         button.disabled=true;
         return false;
     } else {
         document.getElementById("blankMsg").innerHTML = "";
         document.getElementById('pass').style.borderColor = "";
         document.getElementById('cpass').style.borderColor = "";
         button.disabled=false;
     }

    }

</script>
<%

String s=(String) request.getAttribute("errorMessage");



if( s!=null)
{
	
		%>
	
	<%=s%>
		<%}%>
	


	
       
<body>


    <section class="login-clean">
        <form action="Forgotpass" >
            <h2 class="visually"><strong>Keep your password Safe!</strong> </h2>
            <div class="alert" style="padding: 2px;">
                <span id="blankMsg" style="border-color:rgb(104, 20, 20) ; background:rgb(255, 200, 200)"
                   > </span>
                    
            </div>
            <div class="illustration"><i class="icon ion-ios-locked-outline"></i></div>
             <div class="mb-3">
                        <label for="pass" class="form-label">New Password</label>
                        <input type="password" class="form-control" placeholder="Type your password" name="pass"
                            id="pass" onkeyup="validateForm()">
                       
                    </div>


                    <div class="mb-3">
                        <label for="cpass" class="form-label">Re-type Password</label>
                        <input type="password" class="form-control" placeholder="Re-type your password" name="cpass"
                            id="cpass" onkeyup="validateForm()">
                        
                    </div>
           
            <div class="mb-3"> <button class="btn btn-danger d-block w-100" type="submit" name="button" id="button" disabled="true" ><strong>continue</strong></button></div>
           
           <div class="mb-3"> 
           <a href="Login.jsp" style="text-decoration: none;">
           <div class="btn btn-danger d-block w-100"><strong>cancel</strong></div></a>
           </div>
           
        </form>
    </section>





    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
        crossorigin="anonymous"></script>


</body>

</html>