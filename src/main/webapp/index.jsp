
<html>
<body>

<script>  
function validateForm() {  
    //collect form data in JavaScript variables  
    var pw1 = document.getElementById("pass").value;  
    var pw2 = document.getElementById("cpass").value;  
    var name1 = document.getElementById("fname").value;  
    var name2 = document.getElementById("lname").value;  
      
    //check empty first name field  
    if(name1 == "") {  
      document.getElementById("blankMsg").innerHTML = "**Fill the first name";  
      return false;  
    }  else{
    	document.getElementById("blankMsg").innerHTML = ""; 
    }
      
    //character data validation  
    if(!isNaN(name1)){  
      document.getElementById("blankMsg").innerHTML = "**Only characters are allowed";  
      return false;  
    }  
  
   //character data validation  
    if(!isNaN(name2)){  
      document.getElementById("charMsg").innerHTML = "**Only characters are allowed";  
      return false;  
    }   
    
    //check empty password field  
    if(pw1 == "") {  
      document.getElementById("message1").innerHTML = "**Fill the password please!";  
      return false;  
    }  
    
    //check empty confirm password field  
    if(pw2 == "") {  
      document.getElementById("message2").innerHTML = "**Enter the password please!";  
      return false;  
    }   
     
    //minimum password length validation  
    if(pw1.length < 8) {  
      document.getElementById("message1").innerHTML = "**Password length must be atleast 8 characters";  
      return false;  
    }  
  
    //maximum length of password validation  
    if(pw1.length > 15) {  
      document.getElementById("message1").innerHTML = "**Password length must not exceed 15 characters";  
      return false;  
    }  
    
    if(pw1 != pw2) {  
      document.getElementById("message2").innerHTML = "**Passwords are not same";  
      return false;  
    } else {  
 
    }  
 }  
</script>  
  

<form action="Register" method="post" onclick="validateForm())">
<div class="container">
<h1>Register Here</h1>
<p>Please fill in the details to create an account with us.</p>
<hr>
<label for="fname"><b>First Name</b></label><br>
<input type="text" placeholder="Enter Fname" name="fname" id="fname" onblur="validateForm()"> <br>
<span id = "blankMsg" style="color:red"  onclick="hide(); return false"> </span> <br><br>  

<label for="lname"><b>Last Name</b></label><br>
<input type="text" placeholder="Enter Lname" name="lname" id="lname"><br>
<span id = "charMsg" style="color:red"> </span> <br><br>  

<label for="email"><b>Enter email</b></label><br>
<input type="email" placeholder="Enter email" name="email" id="email"><br>

<label for="contact"><b>Enter phone</b></label><br>
<input type="number" placeholder="Enter phone" name="contact" id="contact"><br>

<label for="pass"><b>Enter password</b></label><br>
<input type="text" placeholder="Enter password" name="pass" id="pass"><br>
<span id = "message1" style="color:red"> </span> <br><br>  

<label for="cpass"><b>Confirm password</b></label><br>
<input type="text" placeholder="Confirm password" name="cpass" id="cpass"><br>
<span id = "message2" style="color:red"> </span> <br><br>  



<hr>

<button type="submit" name="button" id="button"  ><strong>Register</strong></button>
</div>

</form>
</body>
</html>
