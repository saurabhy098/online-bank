<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
table {
	margin-left: auto;
	margin-right: auto;
	border: 1px solid black
}

body {
	background-color: gray;
	font-family: Arial, Helvetica, sans-serif;
}

#Header {
	background-color: blanchedalmond;
	color: rgb(187, 56, 39);
	text-align: center;
}

#Container {
	background: white;
	width: 800px;
	margin-left: auto;
	margin-right: auto;
}

#footer {
	clear: both;
	padding: 2;
	text-align: center;
	margin: 0;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div id="Container">
		<div id="Header">
			<h1>
				<center>Add New Beneficiary</center>
			</h1>
		</div>
		<div id="nav">
		<form method="post">
			<table border="1">
			<tr>
					<th>nickname</th>
					<td><input type="text" name="nickname"></td>
				</tr>
				<tr>
					<th>Beneficiary name</th>
					<td><input type="text" name="receivername"></td>
				</tr>
				<tr>
					<th>Beneficiary Account Number</th>
					<td><input type="text" name="receiveraccno"></td>
				</tr>
				<tr>
					<th>sender Account Number</th>
					<td><input type="text" name="senderaccno"></td>
				</tr>
			</table>
		</div>
		<div>
			<table border="1">
				
			</table>
		</div>
		<div id="footer">
			<input type="submit" value="Save as Beneficiary">
		</div>
		
		</form>
		
	</div>

</body>
</html>