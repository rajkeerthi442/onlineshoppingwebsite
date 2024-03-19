<%@page import="onlineshopping.dbconnector"%>
<%@page import="java.sql.*" %>
<%
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		if("admin@gmail.com".equals(email)&&"admin".equals(password)){
			session.setAttribute("email",email);
			response.sendRedirect("admin/adminhome.jsp");
		}
		else
		{
			int z=0;
			try{
				Connection con = dbconnector.getcon();
				Statement st = con.createStatement();
				ResultSet rs=st.executeQuery("select * from users where email='"+email+"' and password='"+password+"'");
				while(rs.next()){
					z=1;
					session.setAttribute("email",email);
					response.sendRedirect("home.jsp");
				}
				if(z==0){
					response.sendRedirect("login.jsp?msg=not exist");
				}
			}
			catch(Exception e){
				System.out.println(e);
				response.sendRedirect("login.jsp?msg=not invalid");
			}
			
		}
%>