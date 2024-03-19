<%@page import="onlineshopping.dbconnector"%>
<%@page import="java.sql.*" %>
<%
		String id=request.getParameter("id");
		String name=request.getParameter("name");
		String category=request.getParameter("category");
		String price=request.getParameter("price");
		String active=request.getParameter("active");
		try{
			
			Connection con=dbconnector.getcon();
			Statement st=con.createStatement();
			st.executeUpdate("Update product set name='"+name+"',category='"+category+"',price='"+price+"',active='"+active+"' where id='"+id+"'");
			if(active.equals("no")){
				System.out.println("hi");
				st.executeUpdate("delete from cart where productid='"+id+"' and address is null");
			}
			response.sendRedirect("allproducteditproduct.jsp?msg=done");
		}
		catch(Exception e){
			System.out.println(e);
			response.sendRedirect("allproducteditproduct.jsp?msg=wrong");
		}




%>