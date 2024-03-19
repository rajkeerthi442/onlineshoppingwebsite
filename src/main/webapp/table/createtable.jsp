<%@page import="onlineshopping.dbconnector" %>
<%@page import="java.sql.*" %>
<%
try
{
	Connection con = dbconnector.getcon();
	Statement st=con.createStatement();
	String q1="Create table users(name varchar(100),email varchar(100) primary key,mobilenumber bigint,securityquestion varchar(200),answer  varchar(100),password varchar(100),address varchar(100),city varchar(100),state varchar(100),country varchar(100))";
	
	
	
	String q2="Create table product(id int primary key,name varchar(500),category varchar(200),price int,active varchar(10) )";
	String q3="Create table cart(email varchar(100),productid int,quantity  int,price int,total int,address varchar(500),city varchar(100),state varchar(100),country varchar(100),mobilenumber bigint,orderdate varchar(100),deliverydate varchar(100),paymentmethod varchar(100),transactionid varchar(100),status varchar(10))";
	String q4="create table message(id int auto_increment,email varchar(100),subject varchar(200),body varchar(1000),primary key(id))";
	System.out.println(q1);
	 
	System.out.println(q2);
	System.out.println(q3);
	System.out.println(q4);
	//st.execute(q1);
	//st.execute(q2);
	//st.execute(q3);
	
	st.execute(q4);
	System.out.print("table created");
	con.close();
}
catch (Exception e){
	System.out.print(e);
}




%>




