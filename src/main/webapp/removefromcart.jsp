
<%@page import="onlineshopping.dbconnector" %>
<%@page import="java.sql.*" %>
<%

String email=session.getAttribute("email").toString();
String productid=request.getParameter("id");
try{
	Connection con=dbconnector.getcon();
	Statement  st = con.createStatement();
	st.executeUpdate("delete from cart where email='"+email+"' and productid='"+productid+"' and address is null");
	response.sendRedirect("mycart.jsp?msg=removed");
}
catch(Exception e)
{
	System.out.println(e);
}
%>
