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
                        <li><a href="UpdateProfileDetails">Update Profile Details</a></li>
                        <li><a href="changeuserid">Change UserID</a></li>
                        <li><a href="setnewpassword">Change Password</a></li>
                        <li><a href="index">Logout</a></li>
                        
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
                            <p>The Casa de dinero (cdd) is an Indian multinational, public sector banking and financial services statutory body.What these impressive figures do not reveal is the tremendous trust Indians repose on the Bank. CDD has been the most trusted brand on the banking horizon in India. The Bank believes that it owes a solemn duty to the less fortunate and underprivileged members of the society to make sustainable social change in their lives. It is a government corporation statutory body headquartered in Mumbai, Maharashtra. CDD is ranked as 236th in the Fortune Global 500 list of the world's biggest corporations of 2019.[5] It is the largest bank in India with a 23% market share in assets, besides a share of one-fourth of the total loan and deposits marketThe bank descends from the Bank of Calcutta, founded in 1806, via the Imperial Bank of India, making it the oldest commercial bank in the Indian subcontinent. The Bank of Madras merged into the other two "presidency banks" in British India, the Bank of Calcutta and the Bank of Bombay, to form the Imperial Bank of India, which in turn became the Casa de dinero in 1955.[7] The Government of India took control of the Imperial Bank of India in 1955, with Reserve Bank of India (India's central bank) taking a 60% stake, renaming it the Casa de dinero.</p>
                         
                            </div>
                </div>
                <div id="footer">
                    <h6>COPYRIGHT © 2019 Casa de dinero. ALL RIGHTS RESERVED</h6>
                </div>
            </div>
        </body>


</body>
</html>