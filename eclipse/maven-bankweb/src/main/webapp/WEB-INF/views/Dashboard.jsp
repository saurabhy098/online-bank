<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
    
            <style>
                    body {
                        background-color:gray;
                      
                      font-family: Arial, Helvetica, sans-serif;
                    }
                    #Header{
                        background-color: blanchedalmond;
                        color: rgb(187, 56, 39);
                        text-align: center;
                    }
                    #Container{
                        background: white;
                        width: 800px;
                        margin-left: auto;
                        margin-right: auto;
                    }
                    #Content{
                        padding: 10px;
                    }
                    #nav{
                        width: 180px;
                        float: left;
                    }
                    #nav .select{
                        font-weight: bold;
                    }
                    #nav.select .a{
                        float:left;
                        color: #f2f2f2;
                        text-align: center;
                        padding: 14px 20px;
                        text-decoration: none;
                        font-size: 12px;
                    }
                    
                    #nav ul{
                        list-style-type: none;
                        padding: 0;                      
                    }
                    
                    h6{
                        align-content: flex-end;
                        color: white;
                    }
                    #footer{
                        clear: both;
                        padding: 2;
                        background-color: black;
                        text-align:center;
                        margin: 0;
                    }
                    #links {
                        width: 600px;
                        float: right;
                      overflow: hidden;
                      background-color:black;
                    }
                    #matter {
                        width: 600px;
                        float: right;
                      overflow: hidden;
                      
                    }
                    #h1{
                       margin: 0; 
                    }
                    #main a {
                      float:left;
                      color: #f2f2f2;
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
                    </style>

<body>
            <div id="Container">
                <div id="Header">
                        <h1>Dashboard</h1>
                </div>
                <div id="Content">
                    <div id="nav">
                    <ul class="select">
                        <li><a href="UpdateProfileDetails.jsp">Update Profile Details</a></li>
                        <li><a href="ChangeUserID.jsp">Change UserID</a></li>
                        <li><a href="ChangePassword.jsp">Change Password</a></li>
                        
                    </ul>
                    </div>
                    <div id="main">
                        <div id="links">
                            <a href="AccountDetails">Account Details</a>
                            <a href="AccountSummary">Account Summary</a>
                            <a href="Payee">Add Payee</a>
                            <a href="AccountStatement">Account Statement</a>
                        </div> 
                        <div id="matter">  
                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>
                        </div>
                </div>
                <div id="footer">
                    <h6>COPYRIGHT © 2019 LTI BANK. ALL RIGHTS RESERVED</h6>
                </div>
            </div>
        </body>


</body>
</html>