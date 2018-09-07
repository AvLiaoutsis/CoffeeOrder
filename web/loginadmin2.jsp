
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
    <title>Coffee Now</title></head>
    <body>
        
        <%@ page language ="java" import = "java.io.*, java.lang.*, java.sql.*" %>
        
        <% try {
                session.setAttribute("msg2","");//Δημιουργία μυνήματος για session
                session.setAttribute("msg3","");//Δημιουργία μυνήματος για session
                String strUSERNAME = request.getParameter("username");//Λαμβάνει ως όρισμα το username
                String strPASSWORD = request.getParameter("password");//Λαμβάνει ως όρισμα το password             
                Class.forName("com.mysql.jdbc.Driver");//Λαμβάνει την βιοβλιοθήκη
                Connection myConn = DriverManager.getConnection("jdbc:mysql://localhost:3306/javadb", "root", "");//Φτιάχνει σύνδεση
                String strSQL = "SELECT USERNAME, password FROM admin where USERNAME = ? and password = PASSWORD(?)";//Query
                PreparedStatement stmt = myConn.prepareStatement(strSQL);//Φτιάχνει prepared statement
                stmt.setString(1, strUSERNAME);
                stmt.setString(2, strPASSWORD);
                ResultSet myResult = stmt.executeQuery();//Εκτελεί Query
                if (myResult.next()) {//Αποτελέσματα
                    session.setAttribute("strUSERNAME", strUSERNAME);
                    response.sendRedirect("allages.jsp");//Παει στο allages.jsp
                } else {
                     response.sendRedirect("adminlogin.jsp");//Παει στο adminlogin.jsp
                }
                myResult.close();
                stmt.close();//κλείνει statement
                myConn.close();//Κλείνει σύνδεση
            } catch (Exception e) {
                out.println(e);
            }
        %>
    </body> 
</html>
