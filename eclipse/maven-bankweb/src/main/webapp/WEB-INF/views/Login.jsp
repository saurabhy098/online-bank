<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style><%@ include file="/WEB-INF/views/css/form.css" %></style>
<title>Welcome to Bank!!!!!</title>

</head>

<body>
	<div class="container">
<div id="wrapper">
<form id="myForm" method="post">
<div id="header"><h1><b><u><center>USER LOGIN</center></h1></u></b></div>
<div class="body">
<div class="form_fiels">
<div class="outer"><label class="UP">UserName </label>
<div class="inner">
<div class="inner"><input type="text" id="u" name="user_id" class="textInput" autocomplete="off" required></div>

</div>

</div>

<div class="outer"><label class="UP">Password: </label>
<div class="inner">
<div class="inner"><input type="password" id="pass" name="user_password" class="textInput" autocomplete="off" required></div>
</div>

</div>

<div class="formaction">
<div class="outer">
<center><input type="submit" id="subBtn1" name="subBtn" class="btn" value="Login"></center>
</div>
</div>

</div><br>
<div class="inner"><span id="icon">&nbsp; &nbsp;<a href="Register" class="link">First Time User? Register</a></span></div>
<div class="inner"><span id="icon">&nbsp; &nbsp;<a href="ForgotUserID" class="link"> Forgot User ID</a></span></div>
<div class="inner"><span id="icon">&nbsp; &nbsp;<a href="ForgotPassword" class="link"> Forgot Password</a></span></div>

</div>

</div>
</form>
</div>


</body>
</html>

