<%@page import="onlineshopping.dbconnector" %>
<%@page import="java.sql.*" %>
<%
String email=session.getAttribute("email").toString();
String mobileNumber=request.getParameter("mobilenumber");
String password=request.getParameter("password");
int check=0;
try{
	Connection con = dbconnector.getcon();
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select * from users where email='"+email+"' and password='"+password+"'");
	while(rs.next()){
		 check=1;
		 st.executeUpdate("update users set mobilenumber='"+mobileNumber+"' where email='"+email+"'");
		 response.sendRedirect("changemobilenumber.jsp?msg=done");
		 
	}
	if(check==0){
		 response.sendRedirect("changemobilenumber.jsp?msg=wrong");
	}
}
catch(Exception e){
	
}

%>