
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
    //Παίρνουμε τα ορίσματα
    String address = request.getParameter("address");
    String ESP = request.getParameter("ESP");
    String CAP = request.getParameter("CAP");
    String FRE = request.getParameter("FRE");
    String FRC = request.getParameter("FRC");
    String FRECCINO = request.getParameter("FRECCINO");
    Double dESP=Double.valueOf(ESP);
    Double dCAP=Double.valueOf(CAP);
    Double dFRE=Double.valueOf(FRE);
    Double dFRC=Double.valueOf(FRC);
    Double dFRECCINO=Double.valueOf(FRECCINO);
String query = "UPDATE coffeeorigin SET origin =?";//Εκτελούμε query
java.sql.PreparedStatement Stmt =connection.prepareStatement(query);
Stmt.setString(1,address);
Stmt.executeUpdate();
Stmt.close();
String query2 = "UPDATE coffee SET ESP=?,CAP=?,FRE=?,FRC=?,FRECCINO=?";//Εκτελούμε query
java.sql.PreparedStatement Stmt2 =connection.prepareStatement(query2);
Stmt2.setDouble(1,dESP);
Stmt2.setDouble(2,dCAP);
Stmt2.setDouble(3,dFRE);
Stmt2.setDouble(4,dFRC);
Stmt2.setDouble(5,dFRECCINO);
Stmt2.executeUpdate();
Stmt2.close();	   
response.sendRedirect("allages.jsp");
session.invalidate();

connection.close();
}  catch (Exception e) {
              out.println(e);
}
%> 

