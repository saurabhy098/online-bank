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
     <h2><center><b><u>SET NEW PASSWORD</u></b> </center></h2>
  	<div id="acc_div">
      <label>Account No</label> <br>
      <input type="text" pattern="[0-9]{10}" name="account_no" class="textInput">
      <div id="accno_error"></div>
    </div>
   	
   	<div id="password_div">
   	  <label>Login Password</label> <br>
   	  <input type="password" name="user_password" pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^&*_=+-]).{6,8}$" class="textInput">
   	</div>
   	<div id="pass_confirm_div">
   	   <label>Login Password confirm</label> <br>
   	   <input type="password" name="Confirm_Password" class="textInput">
   	   <div id="password_error"></div>
   	</div>

   <div id="Transactionpassword_div">
      <label>Transaction Password</label> <br>
      <input type="password" name="transaction_password"  pattern="[0-9]{4}" class="textInput">
    </div>
   <div id="Transactionpass_confirm_div">
       <label>Confirm Transaction Password</label> <br>
       <input type="password" name="Confirm_TPassword" class="textInput">
       <div id="transactionpassword_error"></div>
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
var user_password = document.forms['vform']['user_password'];
var Confirm_Password = document.forms['vform']['Confirm_Password'];
var transaction_password = document.forms['vform']['transaction_password'];
var Confirm_TPassword = document.forms['vform']['Confirm_TPassword'];

// SELECTING ALL ERROR DISPLAY ELEMENTS
var accno_error = document.getElementById('accno_error');
var password_error = document.getElementById('password_error');
var transactionpassword_error = document.getElementById('transactionpassword_error');


// SETTING ALL EVENT LISTENERS
account_no.addEventListener('blur', accountnoVerify, true);
user_password.addEventListener('blur', passwordVerify, true);
transaction_password.addEventListener('blur', transactionpasswordVerify, true);
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

  if (user_password.value == "") {
    user_password.style.border = "1px solid red";
    document.getElementById('password_div').style.color = "red";
    Confirm_Password.style.border = "1px solid red";
    password_error.textContent = "Password is required";
    user_password.focus();
    return false;
  }else{
    password_error.textContent = "";

  }
  // check if the two passwords match
  if (user_password.value != Confirm_Password.value) {
    user_password.style.border = "1px solid red";
    document.getElementById('pass_confirm_div').style.color = "red";
    Confirm_Password.style.border = "1px solid red";
    password_error.innerHTML = "The two passwords do not match";
    return false;
  }else{
    password_error.innerHTML = "";

  }

  if (transaction_password.value == "") {
    transaction_password.style.border = "1px solid red";
    document.getElementById('Transactionpassword_div').style.color = "red";
    Confirm_TPassword.style.border = "1px solid red";
    transactionpassword_error.textContent = "Password is required";
    transaction_password.focus();
    return false;
  }else{
    transactionpassword_error.textContent = "";

  }
  if (transaction_password.value != Confirm_TPassword.value) {
    transaction_password.style.border = "1px solid red";
    document.getElementById('Transactionpass_confirm_div').style.color = "red";
    Confirm_TPassword.style.border = "1px solid red";
    transactionpassword_error.innerHTML = "The two passwords do not match";
    return false;
  }else{
    transactionpassword_error.innerHTML = "";

  }

}

function passwordVerify() {
  if (user_password.value != "") {
    user_password.style.border = "1px solid #5e6e66";
    document.getElementById('pass_confirm_div').style.color = "#5e6e66";
    document.getElementById('password_div').style.color = "#5e6e66";
    password_error.innerHTML = "";
    return true;
  }
  if (user_password.value === Confirm_Password.value) {
    user_password.style.border = "1px solid #5e6e66";
    document.getElementById('pass_confirm_div').style.color = "#5e6e66";
    password_error.innerHTML = "";
    return true;
  }
}
function transactionpasswordVerify(){
  if (transactionpassword.value != "") {
    transactionpassword.style.border = "1px solid #5e6e66";
    document.getElementById('Transactionpass_confirm_div').style.color = "#5e6e66";
    document.getElementById('Transactionpassword_div').style.color = "#5e6e66";
    transactionpassword_error.innerHTML = "";
    return true;
  }
  if (transactionpassword.value === Confirm_TPassword.value) {
    transactionpassword.style.border = "1px solid #5e6e66";
    document.getElementById('Transactionpass_confirm_div').style.color = "#5e6e66";
    transactionpassword_error.innerHTML = "";
    return true;
  }
} 
</script>
</body>
</html>