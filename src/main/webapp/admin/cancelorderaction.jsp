<%@page import="onlineshopping.dbconnector" %>
<%@page import="java.sql.*" %>
<%
String id=request.getParameter("id");
String email=request.getParameter("email");
String status="cancel";
try{
	Connection con = dbconnector.getcon();
	Statement st = con.createStatement();
	st.executeUpdate("update cart set status='"+status+"' where productid='"+id+"' and email='"+email+"' and address is not null");
	response.sendRedirect("orderreceived.jsp?msg=cancel");
}
catch(Exception e){
    System.out.println(e);
    response.sendRedirect("orderreceived.jsp?msg=wrong");
    
}
%>