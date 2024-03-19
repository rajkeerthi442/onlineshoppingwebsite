<%@page import="onlineshopping.dbconnector"%>
<%@page import="java.sql.*"%>
<%@include file="adminheader.jsp"%>
<%@include file="../footer.jsp"%>
<%
String id= request.getParameter("id");
String name= request.getParameter("name");
String category= request.getParameter("category");
String price= request.getParameter("price");
String active= request.getParameter("active");

try
{
Connection con=dbconnector.getcon();
PreparedStatement ps=con.prepareStatement("insert into product values(?,?,?,?,?)");
ps.setString(1,id);
ps.setString(2,name);
ps.setString(3,category);
ps.setString(4,price);
ps.setString(5,active);
ps.executeUpdate();
response.sendRedirect("addnewproduct.jsp?msg=done");
}
catch(Exception e){
	response.sendRedirect("addnewproduct.jsp?msg=wrong");
}
%>