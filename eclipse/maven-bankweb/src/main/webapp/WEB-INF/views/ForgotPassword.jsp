<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome to Bank!!!!!</title>
<style><%@ include file="/WEB-INF/views/css/form.css" %></style>
</head>



<body>


	<div class="container">

		<form id="myForm" method="post">
			<div id="header1">
				<b><u>Forgot Password</u></b>
			</div>
			<div class="body">
				<div class="form_fiels">


					<div class="outer">
						<label class="UP"> Enter User ID: </label>
						<div class="inner">
							<div class="inner">
								<input type="text" id="uf" name="userid">
							</div>
							<div class="outer">
								<label class="UP"> Enter OTP </label>
								<div class="inner">
									<div class="inner">
										<input type="text" id="pass1" name="passwd">
									</div>
								</div>
							</div>
						</div>
						<div class="formaction">
							<div class="outer">
								<input type="submit" name="submit">
							</div>
						</div>
					</div>
				</div>
		</form>
	</div>


</body>
</body>
</html>