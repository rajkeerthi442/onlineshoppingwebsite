<%@page import="onlineshopping.dbconnector" %>
<%@page import="java.sql.*" %>
<%
String email=session.getAttribute("email").toString();
String id=request.getParameter("id");
String incdec=request.getParameter("quantity");
int price=0;
int total=0;
int quantity=0;
int finaltotal=0;
try{
	Connection con = dbconnector.getcon();
	Statement st =con.createStatement();
	ResultSet rs=st.executeQuery("select * from cart where email='"+email+"' and productid='"+id+"' and address is null");
	while(rs.next())
	{
		price=rs.getInt(4);
		total=rs.getInt(5);
		quantity=rs.getInt(3);
		
	
	if(quantity==1 && incdec.equals("dec")){
		response.sendRedirect("mycart.jsp?msg=notpossible");
	}
	else if(quantity!=1 && incdec.equals("dec"))
	{
		total=total-price;
		quantity=quantity-1;
		st.executeUpdate("Update cart set total='"+total+"',quantity='"+quantity+"' where email='"+email+"' and productid='"+id+"' and address is null");
		response.sendRedirect("mycart.jsp?msg=dec");
	}
	else
	{
		total=total+price;
		quantity=quantity+1;
		st.executeUpdate("Update cart set total='"+total+"',quantity='"+quantity+"' where email='"+email+"' and productid='"+id+"' and address is null");
		response.sendRedirect("mycart.jsp?msg=dec");
	}
}
}
catch(Exception e){
	System.out.println(e);
}

%>