<!DOCTYPE html>
<html>
<head>
<title>Online Banking</title>

<style>
body{
 background-color: #EEE;
 font-family: Helvetica,Arial,sans-serif;
}
a{
text-decoration: none;
font-family: fantasy;
color:rgb(247, 247, 245);
}
#container{
background-color: white;
width: 850px;
margin-left: auto;
margin-right: auto;
}
#header{
background-color: rgb(78, 172, 235);
color: white;
text-align: center;
padding: 10px;
}
#content {
padding:10px;
}
#main a {
                      float:left;
                      color: #c5bcbc;
                      text-align: center;
                      padding: 14px 20px;
                      text-decoration: none;
                      font-size: 12px;
                    }
                    
                    #main a:hover {
                      background-color: #ddd;
                      color: black;
                    }
                    
                    #main a.active {
                      background-color:blanchedalmond;
                      color: white;
                    }
#nav {
width:200px;
float: right;
padding: o;
}
#nav ul{
list-style-type: none;
padding: o;
text-align: left;
}
#main {
width:600px;
float: right;
}
#footer {
clear: both;
padding: 5px;
background-color: rgb(10, 9, 9);
color: white;
text-align: right;
}
#nav .selected{
font-weight: bold;
}
* {box-sizing: border-box}

/* Style the tab */
.tab {
  float: left;
  border: 1px solid #ccc;
  background-color: #f1f1f1;
  width: 30%;
  height: 30px;
}

/* Style the buttons that are used to open the tab content */
.tab button {
    
  display: block;
  background-color: inherit;
  color: black;
  padding: 2px 6px;
  width: 100%;
  text-align: left;
  cursor: pointer;
  transition: 0.3s;
}

ul{
    padding-left: 10px;
    padding-right:10px; 
}
</style>
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
<a class="tabcontent" href="Login" >Login</a>
<a class="tabcontent" href="Register">Register</a>
<a class="tabcontent" href="openaccount">Open Account</a>
</ul>
</div>
<img src="C:\Users\AE206_PC14\Desktop\bankimage\home.jpg"  width="760" height="400">
</div>
<div id="footer"><center>
  COPYRIGHT @ 2019 Casa de dinero. ALL RIGHTS RESERVED
</center>
</div>
</div>
</body>
</body>
</html>
