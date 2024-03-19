<%@page import="onlineshopping.dbconnector" %>
<%@page import="java.sql.*" %>
<%@ include file="changedetailsheader.jsp" %>
<%@ include file ="footer.jsp"%>
<html>
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Change Security Question</title>
</head>
<body>
<%
String msg=request.getParameter("msg");
if("done".equals(msg)){
%>
<h3 class="alert">Your security Question successfully changed !</h3>
<%} %>
<% 
if("wrong".equals(msg)){
%>
<h3 class="alert">Your Password is wrong!</h3>
<%} %>
<form action="changesecurityquestionaction.jsp" method="post">

<h3>Select Your New Securtiy Question</h3>
  <select class="input-style" name="securityquestion">
  <option value="what is your first car?">what is your first car?</option>
   <option value="what is your first pet?">what is your first pet?</option>
    <option value="what is your first elementary school name?">what is your first elementary school name?</option>
     <option value="what is your name of town and where you were born?">what is your name of town and where you were born?</option>
  </select>
 <hr>
 <h3>Enter Your New Answer</h3>
 <input class="input-style" type="text" name="newanswer" placeholder="enter your new answer" required>
<hr>
<h3>Enter Password (For Security)</h3>
 <input class="input-style" type="password" name="password" placeholder="enter password(for security)" required>

<hr>
 <button class="button" type="submit">save<i class='far fa-arrow-alt-circle-right'></i></button>
 </form>

</body>
<br><br><br>
</html>