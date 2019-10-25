<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome to Bank!!!!!</title>
<!--CSS link is inserted here-->
<style type="text/css">
* {
	box-sizing: border-box;
}

/* body{
        
    padding: 5px;
    background: #3a7ce0;
    background: -webkit-linear-gradient(-135deg, #3a7ce0, #0ae7a5);
    background: -o-linear-gradient(-135deg, #3a7ce0, #0ae7a5);
    background: -moz-linear-gradient(-135deg, #3a7ce0, #0ae7a5);
    background: linear-gradient(-135deg, #3a7ce0, #0ae7a5);
        } */
#header {
	padding: 20px;
	font-size: 28px;
	text-align: center;
	background-color: blanchedalmond;
	font-family: Arial, Helvetica, sans-serif;
	font-weight: 400;
}

#header1 {
	padding: 20px;
	font-size: 28px;
	background-color: blanchedalmond;
	text-align: center;
	font-family: Arial, Helvetica, sans-serif;
	font-weight: 400;
}

#header2 {
	padding: 20px;
	font-size: 28px;
	font-family: Arial, Helvetica, sans-serif;
	font-weight: 400;
	margin-left: 35%;
}

#header3 {
	padding: 20px;
	font-size: 28px;
	font-family: Arial, Helvetica, sans-serif;
	font-weight: 400;
	margin-left: 30%;
}

#header4 {
	padding: 20px;
	font-size: 28px;
	font-family: Arial, Helvetica, sans-serif;
	font-weight: 400;
	margin-left: 27%;
}

#header5 {
	padding: 20px;
	font-size: 28px;
	font-family: Arial, Helvetica, sans-serif;
	font-weight: 400;
	margin-left: 19%;
}

.container {
	border: 1px solid rgb(153, 151, 151);
	margin: auto;
	border-radius: 15px;
	width: 35%;
	height: auto;
	background-color: white;
	margin-top: 10px;
}

.container1 {
	border: 1px solid rgb(153, 151, 151);
	margin: auto;
	border-radius: 15px;
	width: 50%;
	height: auto;
	background-color: white;
	margin-top: 10px;
}

.container2 {
	border: 1px solid rgb(153, 151, 151);
	margin: auto;
	border-radius: 15px;
	width: 50%;
	height: auto;
	background-color: white;
	margin-top: 10px;
}

.img_container {
	margin: auto;
	width: 10%;
	padding: 19px;
	margin-left: 30%;
}

img {
	width: 150px;
	height: 150px;
}

.logo {
	float: left;
}

.body {
	padding-left: 20px;
	padding-right: 20px;
	font-family: Arial, Helvetica, sans-serif;
	font-size: 13px;
}

.form_lab {
	font-family: Arial, Helvetica, sans-serif;
	font-weight: 600;
}

.outer {
	padding-bottom: 10px;
}

.inner {
	padding-top: 1px;
}

#icon {
	color: cornflowerblue;
	padding-right: 5px;
	padding-left: 5px;
	font-style: italic;
	font-weight: 100px;
	font-size: 15px;
}

input[type="submit"] {
	width: 98%;
	height: 35px;
	color: black;
	border-radius: 3px;
}

input[type="button"] {
	height: 35px;
	color: black;
	border-radius: 3px;
}

#subBtn1 {
	background-color: green;
	border-radius: 15px;
	height: 41px;
}

#s {
	
}

#subBtn2 {
	background-color: #4CAF50;
	border: 1px solid #4CAF50;
}

#nextBtn {
	background-color: #008CBA;;
	border: 1px solid #008CBA;;
}

input[type="text"] {
	width: 97%;
	height: 41px;
	background-color: whitesmoke;
	border-radius: 15px;
}

input[type="password"] {
	width: 97%;
	height: 41px;
	background-color: whitesmoke;
	border-radius: 15px;
}

input[type="date"] {
	width: 97%;
	height: 41px;
	border-radius: 15px;
	background-color: whitesmoke;
}

.nation {
	width: 97%;
	height: 41px;
	border-radius: 15px;
	background-color: whitesmoke;
}

#subBtn:hover {
	cursor: pointer;
	opacity: 0.9;
	background-color: rgb(0, 153, 51);
}

#nextBtn:hover {
	cursor: pointer;
	opacity: 0.9;
	background-color: #0086b3;
}

input[type="text"]:focus {
	outline: 0;
	border-color: rgb(255, 204, 153);
	box-shadow: 1px 1px 5px 1px rgb(255, 204, 153);
}

input[type="password"]:focus {
	outline: 0;
	border-color: rgb(255, 204, 153);
	box-shadow: 1px 1px 5px 1px rgb(255, 204, 153);
}

.err_msg {
	color: crimson;
	padding: 5px;
	display: none;
}

.ex_mark {
	color: crimson;
	padding-right: 5px;
	padding-left: 5px;
	font-style: italic;
	font-weight: 100px;
	font-size: 15px;
}

select, option {
	width: 275px;
	height: 30px;
	border-radius: 3px;
	border: 2px solid rgb(153, 151, 151);
	border-style: inset;
}

a.link.active {
	color: blue;
}

.accordion {
	background-color: #eee;
	color: #0086b3;
	cursor: pointer;
	padding: 18px;
	width: 100%;
	border: none;
	text-align: left;
	outline: none;
	font-size: 15px;
	transition: 0.4s;
}

.active, .accordion:hover {
	background-color: #ccc;
}

.accordion:after {
	content: '\02795'; /* Unicode character for "plus" sign (+) */
	font-size: 13px;
	color: #777;
	float: right;
	margin-left: 5px;
}

.active:after {
	content: "\2796"; /* Unicode character for "minus" sign (-) */
}

.panel {
	padding: 0 18px;
	display: none;
	background-color: white;
	overflow: hidden;
}

.content {
	color: dimgrey;
}

.required:after {
	content: " *";
	color: rgb(204, 51, 0);
	font-size: 15px;
}
</style>
</head>

<body>
	<div class="container">

		<form id="myForm" method="post">
			<div id="header">
				<b><u>User Login</u></b>
			</div>
			<div class="body">
				<div class="form_fiels">
					<div class="outer">
						<label class="form_lab required">UserName </label>
						<div class="inner">
							<div class="inner">
								<input type="text" id="u" name="user_id"  required>
							</div>
							<div class="err_msg">
								<span class="ex_mark">!</span>Enter Username
							</div>
						</div>
						<div class="err_msg">
							<span class="ex_mark">!</span>Enter username
						</div>
					</div>

					<div class="outer">
						<label class="form_lab  required">Password: </label>
						<div class="inner">
							<div class="inner">
								<input type="password" id="pass" name="user_password" required>
							</div>


							<div class="inner">
								<span id="icon">i</span>Password must be at least 6 characters
							</div>


							<div class="err_msg">
								<span class="ex_mark">!</span>Incorrect password
							</div>
						</div>

					</div>


					<div class="formaction">
						<div class="outer">
							<input type="submit" id="subBtn1" name="subBtn" value="Login" >
							<div class="inner">
								<span id="icon">&nbsp; &nbsp;<a href="Register"
									class="link">First Time User? Register</a></span>
							</div>
							<div class="inner">
								<span id="icon">&nbsp; &nbsp;<a href="ForgotUser"
									class="link"> Forgot User ID</a></span>
							</div>
							<div class="inner">
								<span id="icon">&nbsp; &nbsp;<a href="ForgotPassword"
									class="link"> Forgot Password</a></span>
							</div>


						</div>
					</div>




				</div>

			</div>
		</form>
	</div>


</body>
</html>

