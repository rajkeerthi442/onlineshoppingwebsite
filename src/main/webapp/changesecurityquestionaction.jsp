<%@page import="onlineshopping.dbconnector" %>
<%@page import="java.sql.*" %>
<%
String email=session.getAttribute("email").toString();
String  securityquestion=request.getParameter("securityquestion");
String newanswer=request.getParameter("newanswer");
String password=request.getParameter("password");
int check=0;
try{
	Connection con = dbconnector.getcon();
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select * from users where email='"+email+"' and password='"+password+"'");
	while(rs.next())
	{
		check=1;
		st.executeUpdate("update users set securityquestion='"+securityquestion+"',answer='"+newanswer+"' where email='"+email+"'");
		response.sendRedirect("changesecurityquestion.jsp?msg=done");
  }
	if(check==0){
		response.sendRedirect("changesecurityquestion.jsp?msg=wrong");
	}
}
catch(Exception e){
	System.out.println(e);
}
	

%>