<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style><%@ include file="/WEB-INF/views/css/dashboard.css" %></style>
<title>Insert title here</title>
</head>
<body><head>
           <!--  <style>
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
                    #links table,tr,td{
                    border:1px solid white;
                    }
                    #matter table, th, td {
                        
                        border: 1px solid black;
                        border-collapse: collapse;
                    }
                    #links .td,th {
                        padding: 2;
                        text-align: left;
                    }
                    #nav ul{
                        list-style-type: none;
                        padding: 0;                      
                    }
                    
                    h6{
                        align-content: flex-end;
                        color: white;
                    }
                    #footer1{
                        clear: both;
                        padding: 2;
                        text-align:center;
                        margin: 0;
                    }
                    #links {
                        width: 600px;
                        float: right;
                      overflow: hidden;
                      
                    }
                    #matter {
                        width: 600px;
                        float: right;
                      overflow: hidden;
                      
                    }
                    #h1{
                       margin: 0; 
                    }
                    
                    
                    </style>
 -->



  <body>
            <div id="Container">
                <div id="Header">
                        <h1>Account Statement</h1>
                </div>
                <div id="Content">
                    <div id="nav">
                    <ul class="select">
                        <li><a href="AccountDetails.jsp">Account Details</a></li>
                        <li><a href="AccountSummary.jsp">Account Summary</a></li>
                        <li><a href="FundTransfer.jsp">Funds Transfer</a></li>
                        <li><a href="AccountStatement.jsp">Account Statement</a></li>
                    </ul>
                    </div>
                    <div id="main">
                        <div id="links">
                        <table style="width:100%">
                            <tr>
                                    <td>Statement from</td>
                                    <td><input type="text"></td>
                                    <td>To</td>
                                    <td><input type="text"></td>
                            </tr>
                        </table>
                        </div>
                        <div id="matter">  
                                <table style="width:100%">
                                    <tr>
                                            <th>date</th>
                                            <th>receiver Account Number</th>
                                            <th>transaction type</th>
                                            <th>balance</th>
                                            <th>amount transfered</th>
                                    </tr>
                                 <c:forEach items="${requestScope.list1 }"  var="transaction">
                                    <tr>
                                            <td>${transaction.date }</td>
                                            <td>${transaction.receiveraccount_no }</td>
                                            <td>${transaction.transactiontype }</td>
                                            <td>${transaction.currentbalaance}</td>
                                            <td>${transaction.amounttransfered}</td>
                                        </tr>                                                                                                            
                                        </c:forEach>                                                                                                                                                                   
                                                                                                                                                                                                                     
                                 <c:forEach items="${requestScope.list2 }"  var="transaction1">
                                    <tr>
                                            <td>${transaction1.date}</td>
                                            <td>${transaction1.receiveraccount_no }</td>
                                            <td>${transaction1.transactiontype }</td>
                                            <td>${transaction1.currentbalaance}</td>
                                            <td>${transaction1.amounttransfered}</td>
                                        </tr>
                                      
                                        </c:forEach>                                                                            
                                    </table>
                                    

                        </div>
                </div>
                </div>
                <div id="footer1">
                <form method="post">
                <input type="submit" id="submit" value="click to see the statement">
                </form>
                    
                </div>
                
            </div>
        </body>
    </head>


</body>
</html>