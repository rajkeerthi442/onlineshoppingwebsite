<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>ForgotPassword</title>
<style>
body {
  background-color: #0080FF;
  font: 1em Helvetica;
}

#container {
  width: 840px;
  margin: 25px auto;
  margin-top: 50px;
}

.whysign {
  float: left;
  background-color: white;
  width: 480px;
  height: 528px;
  border-radius: 0 5px 5px 0;
  padding-top: 20px;
  padding-right: 20px;
}
.whysignLogin
{
	float: left;
  background-color: white;
  width: 480px;
  height: 347px;
  border-radius: 0 5px 5px 0;
  padding-top: 20px;
  padding-right: 20px;
}
.whyforgotPassword
{
	float: left;
  background-color: white;
  width: 480px;
  height: 470px;
  border-radius: 0 5px 5px 0;
  padding-top: 20px;
  padding-right: 20px;
}
.signup {
  float: left;
  width: 300px;
  padding: 30px 20px;
  background-color: white;
  text-align: center;
  border-radius: 5px 0 0 5px;
}


[type=text],[type=email],[type=number],[type=password],select,option {
  display: block;
  margin: 0 auto;
  width: 80%;
  border: 0;
  border-bottom: 1px solid rgba(0,0,0,.2);
  height: 45px;
  line-height: 45px;  
  margin-bottom: 10px;
  font-size: 1em;
  color: black;
}

[type=submit] {
  margin-top: 25px;
  width: 80%;
  border: 0;
  background-color: #0080FF;
  border-radius: 5px; 
  height: 50px;
  color: white;
  font-weight: 400;
  font-size: 1em;
}

[type='text']:focus {
  outline: none;
  border-color: #53CACE;
}

h1 {
  color: red;
  font-weight: 900;
  font-size: 2.5em;
}

p {
  color: rgba(0,0,0,.6);
  font-size: 1.2em;
  margin: 50px 0 50px 0;
}

span {
  font-size: .75em;
  background-color: white;
  padding: 2px 5px;
  color: rgba(0,0,0,.6);
  border-radius: 2px;
  box-shadow: 1px 1px 1px rgba(0,0,0,.3);
  margin: 5px;
}

span:hover {
  color: #53CACE;
}

p:nth-of-type(2) {
  font-size: 1em;
}</style>
</head>
<body> 
<div id='container'>
  <div class='signup'>
     <form action="forgotpasswordaction.jsp" method="post">
     <input type="email" name="email" placeholder="enter your email" required><br>
     <input type="number" name="mobilenumber" placeholder="enter mobile number" required><br>
     <select name="securityquestion">
     <option value="what is your first car">what is your  first car</option>
     <option value="what is your first pet">what is your  first pet</option>
     <option value="what is your first elementary school name">what is your  first elementary school name</option>
     <option value="what is your name of town and where  you were born">what is your name of town and where  you were born</option>
     </select><br>
     <input type="text" name="answer" placeholder="enter your answer" required><br>
     <input type="password" name="newpassword" placeholder="enter your new password" required><br>
     <input type ="submit" value="save" >
     </form>
      <h2><a href="login.jsp">Login</a></h2>
  </div>
  <div class='whyforgotPassword'>
  <%String msg1=request.getParameter("msg");
  if("done".equals(msg1)){%>
  <h1>password changed</h1>
	  
  <%} %>
  <% if("invalid".equals(msg1)){ %>
  <% %>
  <h1>something went  wrong</h1>
  <%} %>
  
  


    <h2>Online Shopping</h2>
    <p>The Online Shopping System is the application that allows the users to shop online without going to the shops to buy them.</p>
  </div>
</div>
</body>
</html>