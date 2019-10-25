<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script> 
                function Register()                                    
                { 
                    var AccountNo= document.forms["RegForm"]["Account No."];               
                    var User_ID = document.forms["RegForm"]["User_ID"];    
                    var Password = document.forms["RegForm"]["Password"];  
                    var ConfirmPassword =  document.forms["RegForm"]["Confirm_Password"];  
                    var Transactionpassword = document.forms["RegForm"][" Transaction_Password"];  
                    var ConfirmTpassword = document.forms["RegForm"]["Confirm_TPassword"];  

                    var nerror=document.getElementById("nerror");
                    var perror=document.getElementById("perror");
                    var merror=document.getElementById("merror");
                    var gerror=document.getElementById("gerror");
                    var derror=document.getElementById("derror");
                    var terror=document.getElementById("terror");
                 
  if (document.getElementById('p').value ==
    document.getElementById('t').value) {
    document.getElementById('message').style.color = 'green';
    document.getElementById('message').innerHTML = 'matching';
  } else {
    document.getElementById('message').style.color = 'red';
    document.getElementById('message').innerHTML = 'not matching';
  }

   
   }   

 
                </script>
                <style>
Register{										 
            margin-left: 70px; 
            font-weight: bold ; 
            float: left; 
            clear: left; 
            width: 100px; 
            text-align: left; 
            margin-right: 10px; 
            font-family:sans-serif,bold, Arial, Helvetica; 
            font-size:14px; 
        } 
        
        div { 
            box-sizing: border-box; 
            width: 100%; 
            border: 100px solid black; 
            float: left; 
            align-content: center; 
            align-items: center; 
        } 
        
        form {	
            border: 2px solid #5a5957;									 
            margin: 0 auto; 
            width: 600px; 
        }</style>  
</head>    

</head>
<body>
<body> 
    <h1 style="text-align: center"> REGISTRATION FORM </h1>		 
    <form name="RegForm" method="post"> 
        
        <p>Account No: <input type="text" size=65 name="account_no" id="" placeholder="Enter Account no."  autocomplete="off" required> </p><br>
        <p id="nerror"></p>	 
        <p> User_ID: <input type="text" size=65 name="user_id" placeholder="Enter User_ID" required> </p><br> 
        <p id="perror"></p>
        <p >Set Password: <input id="p" type="password" value="" size=65 name="user_password" placeholder="Set password" required> </p><br> 
        <p id="merror"></p>
        <p>Confirm Password: <input type="password" id="t" value="" size=65 name="Confirm_Password" placeholder="Confirm password" required> </p><br> 
        <p id="gerror"></p>
        <span id='message'></span>
        <p>Transaction Password: <input type="password" size=65 name="transaction_password" placeholder="Transaction Password" required> </p><br> 
        <p id="derror"></p>
        <p>Confirm Transaction Password: <input type="password" size=65 name="Confirm_TPassword" placeholder="Confirm tpassword" required> </p><br> 
        <p id="terror"></p>
        <p><input type="submit" value="Submit" name="Submit">	 
            <input type="reset" value="Reset" name="Reset"> 
        </p>		 
    </form> 
    </body>


</body>
</html>