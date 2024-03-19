<%@page import="onlineshopping.dbconnector" %>
<%@page import="java.sql.*" %>
<%@ include file="changedetailsheader.jsp" %>
<%@ include file ="footer.jsp"%>

<html>
<head>
<link rel="stylesheet" href="css/changedetails.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>changeMobilenumber</title>
</head>
<body>

<%
String msg=request.getParameter("msg");
if("done".equals(msg)){
%>

<h3 class="alert">Your Mobile Number successfully changed!</h3>
<%} %>
<% 
if("wrong".equals(msg)){
%>

<h3 class="alert">Your Password is wrong!</h3>

<%} %>
<form action="changemobilenumberaction.jsp" method="post">
 <h3>Enter Your New Mobile Number</h3>
 <input class="input-style"  type="number"  name="mobilenumber" placeholder="enter new mobileNumber" required>
 
 <hr>
<h3>Enter Password (For Security)</h3>
<input class="input-style"  type="password"  name="password" placeholder="enter your password" required>
 
<hr>
 <button class="button">save<i class='far fa-arrow-alt-circle-right'></i></button>
</form>
</body>
<br><br><br>
</html>