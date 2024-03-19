<%@page import="onlineshopping.dbconnector"%>
<%@page import="java.sql.*" %>
<%
String email=request.getParameter("email");

String newpassword=request.getParameter("newpassword");
int check=0;
try
{
	Connection con=dbconnector.getcon();
	Statement st=con.createStatement();
	
	
	
ResultSet rs=st.executeQuery("select * from users where email='"+email+"' ");

	while(rs.next()){
		check=1;
		
		st.executeUpdate("Update users set password='"+newpassword+"' where email='"+email+"'");
		response.sendRedirect("forgotpassword.jsp?msg=done");
	}
	if(check==0){
		response.sendRedirect("forgotpassword.jsp?msg=invalid");
	}

}catch(Exception e){
	System.out.println(e);
}


%>