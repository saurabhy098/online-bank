<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Form validation with JavaScript</title>
  <!-- <link rel="stylesheet" href="style.css"> -->
  <!--<style>
    body{
      background-color: rgb(211, 202, 186);

    }
  
      #wrapper {
      width: 30%;
      margin: 50px auto;
      padding: 50px;
      background: #D7FBFF;
      border-radius: 5px;
    }
    form {
      margin: 30px auto;
    }
    .textInput {
      border: none;
      height: 28px;
      margin: 2px;
      border: 1px solid #6B7363;
      font-size: 1.2em;
      padding: 5px;
      width: 95%;
      border-radius: 5px;
    }
    .textInput:focus {
      outline: none;
    }
    .btn {
      width: 98.6%;
      border: none;
      margin-top: 5px;
      color: white;
      background-color: #3b5998;
      border-radius: 5px;
      padding: 12px;
    }
    </style>-->
</head>
<body>
  <div id="wrapper">
   <form method="POST" action="index.php" onsubmit="return Validate()" name="vform" >
     <h2><center><b><u>SET NEW USERNAME</u></b> </center></h2>
  	<div id="acc_div">
      <label>Account No</label> <br>
      <input type="text" pattern="[0-9]{10}" name="account_no" class="textInput">
      <div id="accno_error"></div>
    </div>
       
    <div id="userid_div">
        <label>User ID</label> <br>
 <input type="text" name="user_id" minlength="4" maxlength="10" class="textInput">
          <div id="name_error"></div>
        </div>

	<div>
   	<input type="submit" name="register" value="Confirm" class="btn">
   	</div>
   </form>
  </div>
</body>
<body>
<script >
var account_no = document.forms['vform']['account_no'];
var user_id = document.forms['vform']['user_id'];
// SELECTING ALL ERROR DISPLAY ELEMENTS
var accno_error = document.getElementById('accno_error');
var name_error = document.getElementById('name_error');

// SETTING ALL EVENT LISTENERS
account_no.addEventListener('blur', accountnoVerify, true);
user_id.addEventListener('blur', nameVerify, true);

// validation function
function Validate() {
  // validate accountno
  if (account_no.value == "") {
    account_no.style.border = "1px solid red";
    document.getElementById('acc_div').style.color = "red";
    accno_error.textContent = "Account no is required";
    account_no.focus();
    return false;
  }
  else{
    accno_error.textContent = "";
  }
} 
// validate userid
if (user_id.value == "") {
    user_id.style.border = "1px solid red";
    document.getElementById('userid_div').style.color = "red";
    name_error.textContent = "User ID is required";
    user_id.focus();
    return false;
  
  }
  else{
    name_error.textContent = "";
  }
// event handler functions
function nameVerify() {
  if (userid.value != "") {
   userid.style.border = "1px solid #5e6e66";
   document.getElementById('userid_div').style.color = "#5e6e66";
   name_error.innerHTML = "";
   return true;
  }
}

</script>
</body>
</html>