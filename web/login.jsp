

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
    <title>Coffee Now</title></head>
    <body>
        
        <%@ page language ="java" import = "java.io.*, java.lang.*, java.sql.*" %>
        
        <% try {
                session.setAttribute("msg2","");
                String strUSERNAME = request.getParameter("username");
                String strPASSWORD = request.getParameter("password");
                out.println(strUSERNAME);
                 
                Class.forName("com.mysql.jdbc.Driver");

                Connection myConn = DriverManager.getConnection("jdbc:mysql://localhost:3306/javadb", "root", "");

                String strSQL = "SELECT USERNAME, pass,first_name FROM customers_hash where USERNAME = ? and pass = PASSWORD(?)";

                PreparedStatement stmt = myConn.prepareStatement(strSQL);
                stmt.setString(1, strUSERNAME);
                stmt.setString(2, strPASSWORD);

                ResultSet myResult = stmt.executeQuery();
                if (myResult.next()) {
                    session.setAttribute("strUSERNAME", strUSERNAME);

                    out.println("Login Succesful! A record with the given user name and password exists");
                    response.sendRedirect("hall.jsp");
                     session.setAttribute("msg3","");
                     String first_name = myResult.getString(3);

                     session.setAttribute("onoma",first_name);
                     session.setAttribute("username",strUSERNAME);

                } else {
                      session.setAttribute("msg3","Δεν δώσατε σωστά στοιχεία");
                     response.sendRedirect("index.jsp");
                }
                myResult.close();
                stmt.close();
                myConn.close();
            } catch (Exception e) {
                out.println(e);
            }
        %>
    </body> 
</html>
