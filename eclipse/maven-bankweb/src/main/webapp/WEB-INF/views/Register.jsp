<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style><%@ include file="/WEB-INF/views/css/form.css" %></style>
<title>REGISTER</title>

</head>
<body>
<div id="wrapper">
   <form method="POST" onsubmit="return Validate()" name="vform" >
     <h1><center><b><u>REGISTRATION</u></b> </center></h1>
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
   	
   	<div id="password_div">
   	  <label>Password</label> <br>
   	  <input type="password" name="user_password" pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^&*_=+-]).{6,8}$" class="textInput">
   	</div>
   	<div id="pass_confirm_div">
   	   <label>Confirm Password </label> <br>
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
   	<center><input type="submit" name="register" value="Register" class="btn"></center>
   	</div>
   </form>
  </div>
</body>
<body>
<script >
var account_no = document.forms['vform']['account_no'];
var user_id = document.forms['vform']['user_id'];
var user_password = document.forms['vform']['user_password'];
var Confirm_Password = document.forms['vform']['Confirm_Password'];
var transaction_password = document.forms['vform']['transaction_password'];
var Confirm_TPassword = document.forms['vform']['Confirm_TPassword'];
// SELECTING ALL ERROR DISPLAY ELEMENTS
var name_error = document.getElementById('name_error');
var accno_error = document.getElementById('accno_error');
var password_error = document.getElementById('password_error');
var transactionpassword_error = document.getElementById('transactionpassword_error');
// SETTING ALL EVENT LISTENERS
account_no.addEventListener('blur', accountnoVerify, true);
user_id.addEventListener('blur', nameVerify, true);
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
  
 
 // validate userid
  // if (user_id.length < 10) {
  //   user_id.style.border = "1px solid red";
  //   return false;
  //   document.getElementById('username_div').style.color = "red";
  //   name_error.textContent = "Username must be at least 10 characters";
  //   user_id.focus();
  //   //return false;
  // }
  
  // validate password
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
// event handler functions
function nameVerify() {
  if (userid.value != "") {
   userid.style.border = "1px solid #5e6e66";
   document.getElementById('userid_div').style.color = "#5e6e66";
   name_error.innerHTML = "";
   return true;
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
  // if (transactionpassword.value != Confirm_TPassword.value) {
  //   transactionpassword.style.border = "1px solid red";
  //   document.getElementById('Transactionpass_confirm_div').style.color = "red";
  //   Confirm_TPassword.style.border = "1px solid red";
  //   transactionpassword_error.innerHTML = "The two passwords do not match";
  //   return false;
  // }
}
  
  
</script>


</body>
</html>