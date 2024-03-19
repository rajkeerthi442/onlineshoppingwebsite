
<%@page import="onlineshopping.dbconnector" %>
<%@page import="java.sql.*" %>
<%@ include file="header.jsp" %>

<html>
<head>
<link rel="stylesheet" href="../css/messageus.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Message Us</title>
<style>
body{
background-color:skyblue;
}
.input-style {
	  width: 60%;
	  padding: 12px 20px;
	  margin-left:20%;
	  box-sizing: border-box;
	  border: none;
	  background-color:white;
	  color: black;
	  font-size: 16px;
	}

	input[type=text]:focus, textarea:focus,button:focus{
	  outline: 4px solid orange;
	  background-color:rgb(224, 255, 219);     /* oranges! yey */
	}

	textarea
	{
		height: 250px;
		font-size: 16px;
	}

	.button {
	  background-color: white; /* Green */
	  border: none;
	  color: black;
	  padding: 12px 20px;
	  text-align: center;
	  text-decoration: none;
	  display: inline-block;
	  font-size: 14px;
	  margin: 4px 2px;
	  transition-duration: 0.4s;
	  cursor: pointer;
	  margin-left:20%;
	  font-size: 16px;
	}

	.button:hover {
	  background-color: #555555;
	  color: white;
	}

	hr
	{
		width: 60%
	}

	h3
	{
		text-align: center;
		color: white;
	}
	@charset "ISO-8859-1";
</style>
</head>
<body>
<div style="color: white; text-align: center; font-size: 30px;">Message Us <i class='fas fa-comment-alt'></i></div>
<%
String msg=request.getParameter("msg");
if("valid".equals(msg)){
%>

<h3 style="text-align:center; color:yellow;">Message successfully sent. Our team will contact you soon!</h3>
<%} %>
<%
if("invalid".equals(msg)){
%>

<h3 style="text-align:center; ">Something Went Wrong! Try Again!</h3>
<%} %>
<form action="messageusaction.jsp"  method="post">
<input class="input-style" name="subject" type="text" placeholder="subject" required>
<hr>
<textarea class="input-style" name="body" type="text" placeholder="enter your message" required></textarea>
<hr>
<button class="button" type="submit">send<i class="far-fa-arrow-alt-circle-right"></i></button>
</form>
<br><br><br>
</body>
</html>