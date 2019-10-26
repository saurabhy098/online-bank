<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style><%@ include file="/WEB-INF/views/css/home.css" %></style>
</head>
<body>
<div id="container">
<div id="header">
<h1><i>Casa de dinero</i></h1>

</div>
<DIV id="content"></DIV>
<div id="nav">
<h5>INTERNET BANKING<h5>
</div>
<div id="main">
<h2><b>WELCOME</b></h2>
<div id="tab">
<ul>
<a class="tabcontent" href="spring/Login" >Login</a>
<a class="tabcontent" href="spring/Register">Register</a>
<a class="tabcontent" href="spring/OpenAccount">Open Savings Account</a>
</ul>
</div>
<img src="/WEB-INF/views/img/home.jpg"  width="760" height="400">
</div>
<div id="footer"><center>
COPYRIGHT @ 2019 Casa de dinero. ALL RIGHTS RESERVED
</center>
</div>
</div>

</body>
</html>