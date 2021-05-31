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
<script>
    function validateForm() {
        //collect form data in JavaScript variables  
        var pw1 = document.getElementById("pass").value;
        var pw2 = document.getElementById("cpass").value;
        var email=document.getElementById("email").value;
        var contact=document.getElementById("contact").value;
        var name1 = document.getElementById("fname").value;
        var name2 = document.getElementById("lname").value;

        //check empty first name field  
        if (name1 == "") {
            document.getElementById("blankMsg").innerHTML = "*First Name Required";
            document.getElementById('fname').style.borderColor = "red";
            button.disabled=true;
            return false;
        } 

        //character data validation  
       else if (!isNaN(name1)) {
            document.getElementById("blankMsg").innerHTML = "*Only characters are allowed";
            document.getElementById('fname').style.borderColor = "red";
            button.disabled=true;
            return false;
        }else {
            document.getElementById("blankMsg").innerHTML = "";
            document.getElementById('fname').style.borderColor = "";
            button.disabled=false;
        }

        if (name2 == "") {
            document.getElementById("blankMsg").innerHTML = "*Last Name Required";
            document.getElementById('lname').style.borderColor = "red";
            button.disabled=true;
            return false;
        } 

        //character data validation  
        if (!isNaN(name2)) {
            document.getElementById("blankMsg").innerHTML = "*Only characters are allowed";
            document.getElementById('lname').style.borderColor = "red";
            button.disabled=true;
            return false;
        }else {
            document.getElementById("blankMsg").innerHTML = "";
            document.getElementById('lname').style.borderColor = "";

            button.disabled=false;
        }

        if (email == "") {
            document.getElementById("blankMsg").innerHTML = "*Email Required";
            document.getElementById('email').style.borderColor = "red";
            button.disabled=true;
            return false;
        } 
        else {
            document.getElementById("blankMsg").innerHTML = "";
            document.getElementById('email').style.borderColor = "";

            button.disabled=false;
        }

        if (contact == "") {
            document.getElementById("blankMsg").innerHTML = "*Contact Required";
            document.getElementById('contact').style.borderColor = "red";
            button.disabled=true;
            return false;
        } 
        if (isNaN(contact)) {
            document.getElementById("blankMsg").innerHTML = "*Only Numeric characters are allowed";
            document.getElementById('contact').style.borderColor = "red";
            button.disabled=true;
            return false;
        }
        else {
            document.getElementById("blankMsg").innerHTML = "";
            document.getElementById('contact').style.borderColor = "";

            button.disabled=false;
        }

        //check empty password field  
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
	<font color="red">
	<%=s%>
		<%}%>
		</font>
<style>
    .card {
        max-width: 550px;
        width: auto;
        margin: 0 auto;
        box-shadow: 0 4px 8px 0 rgba(245, 87, 87, 0.2);
        /* Added */
        float: 10%;
        /* Added */
        margin-bottom: 20px;
        /* Added */
        margin-top: 20px;
    }
</style>

<body>

    <div class="container-sm " >
        <div class="card">
            <div class="card-body">
                <h2 class="text-center"><strong>Create</strong> an account</h2>
                <p class="card-text text-center">Please fill in the details to create an account with us.</p>
                <div class="card-text text-center">
                    <span id="blankMsg" style="color:rgb(104, 20, 20) ; background:rgb(255, 200, 200)"
                        onclick="hide(); return false"> </span>
                </div>
                <form class="login100-form" method="post"  action="Register">
                    <div class="mb-3">
                        <label for="fname" class="form-label">First Name</label>
                        <input class="form-control" type="text" placeholder="Enter First Name" name="fname" id="fname"
                            onkeyup="validateForm()">


                    </div>

                    <div class="mb-3">
                        <label for="lname" class="form-label">Last Name</label>
                        <input class="form-control" type="text" placeholder="Enter Last Name" name="lname" id="lname"
                            onkeyup="validateForm()">

                        
                    </div>


                    <div class="mb-3">
                        <label for="email" class="form-label">Email address</label>
                        <input type="email" class="form-control" id="email" placeholder="name@example.com" name="email"
                            id="email" onkeyup="validateForm()" >
                    </div>



                    <div class="mb-3">
                        <label for="contact" class="form-label">Contact Number</label>
                        <input type="tel" pattern=".{10}" class="form-control" placeholder="Mobile"
                            oninput="check(this)" name="contact" id="contact" onkeyup="validateForm()">

                    </div>

                    <div class="mb-3">
                        <label for="pass" class="form-label">Password</label>
                        <input type="password" class="form-control" placeholder="Type your password" name="pass"
                            id="pass" onkeyup="validateForm()">
                       
                    </div>


                    <div class="mb-3">
                        <label for="cpass" class="form-label">Confirm Password</label>
                        <input type="password" class="form-control" placeholder="Re-type your password" name="cpass"
                            id="cpass" onkeyup="validateForm()">
                        
                    </div>


                    <div class="d-grid gap-1 col-3 mx-auto">
                        <button class="btn btn-danger" type="submit" name="button" id="button" disabled="true" >
                            <strong>Register</strong>
                        </button>

                    </div>

 <div class="mb-3" style="font: small-caps; text-align: center; font-size: 10px; margin-top: 20px;">
                        Already a member? <a href="Login.jsp" style="text-decoration: none;"> <font color="blue"><strong> Login  </strong></font></a>
                        
                    </div>


                </form>
            </div>
        </div>


    </div>






    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
        crossorigin="anonymous"></script>


</body>

</html>