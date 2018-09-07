
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="java.sql.*" %>

<%
try {  
    Class.forName("com.mysql.jdbc.Driver");
    java.sql.Connection connection =java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/javadb","root", "");
    String username = request.getParameter("username");
    String first_name = request.getParameter("first_name");
    String last_name = request.getParameter("last_name");
    String email = request.getParameter("email");
    String address = request.getParameter("address");
    String telnumber = request.getParameter("telnumber");
    if (first_name=="" || last_name=="" || email=="" || address =="" || telnumber=="")
    {
     out.println("<html><body bgcolor=orange><h1><center>Please fill out all the fields</center></h1></body></html>");
}   else  {
    session.setAttribute("msg2","");
    String query1 ="SELECT USERNAME FROM customers_hash WHERE USERNAME=? ";
    java.sql.PreparedStatement Stmt1 = connection.prepareStatement(query1);
     Stmt1.setString(1,username);
  ResultSet rs = Stmt1.executeQuery();
Stmt1.close();
rs.close();
String query = "UPDATE customers_hash  SET first_name=?,last_name=?,email=?,address=?,telnumber=? where username=?";
java.sql.PreparedStatement Stmt =connection.prepareStatement(query);

Stmt.setString(1,request.getParameter("first_name"));
Stmt.setString(2,request.getParameter("last_name"));
Stmt.setString(3,request.getParameter("email"));
Stmt.setString(4,request.getParameter("address"));
Stmt.setString(5,request.getParameter("telnumber"));
Stmt.setString(6,request.getParameter("username"));
session.setAttribute("onoma",request.getParameter("first_name"));

Stmt.executeUpdate();
Stmt.close();
response.sendRedirect("hall.jsp");
       }

       
connection.close();
}  catch (Exception e) {
              out.println(e);
}


%> 

