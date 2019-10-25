<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
 table{ margin-left:auto; margin-right:auto; border:1px solid black }  
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
                    #footer{
                        clear: both;
                        padding: 2;
                        text-align:center;
                        margin: 0;
                    } 
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form method="post">
		<div id="Container">
                <div id="Header">
                        <h1><center>Initial Neft Payment</center></h1>
                </div>
		
		<div id="content">
               <center><input type="button" value="ADD NEW+"></input></center> 
            </div>	
            <div id="nav">		
	<table border="1" >
			<tr>
			<th>From Account</th>
			<td><input type="text" name="senderaccount_no"></td>
		</tr>
		<tr>
			<th>To Account</th>
			<td><input type="text" name="receiveraccount_no"></td>
		</tr>
		<tr>
			<th>Amount</th>
			<td><input type="text" name="amount"></td>
		</tr>
		
		<tr>
			<th>Transaction Date</th>
			<td><input type="date" name="date"></td>
		</tr>
		<tr>
			<th>Remarks</th>
			<td><input type="text" name="remarks"></td>
        </tr>
    </table>
    </div>
		<div id="footer">

                <input type="submit"><center>Save</center></button>
            </div>
		</div>
	</form>
</body>
</html>