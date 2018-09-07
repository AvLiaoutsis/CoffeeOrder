
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="java.sql.*" %>
<html>
  <head>
   <% try { session=request.getSession(true);
         String username= (String) session.getAttribute("strUSERNAME");
     if(username==null){ response.sendRedirect("index.jsp");}
       Class.forName("com.mysql.jdbc.Driver");

 java.sql.Connection connection = java.sql.DriverManager.getConnection ("jdbc:mysql://localhost:3306/javadb","root", "");
 %>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <meta charset="utf-8">
	
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
    
  
      <link rel="stylesheet" href="css/styleparagelia.css">
                      <link rel="shortcut icon" href="icon.ico" />

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Coffee Now</title>	
  </head>
   <fieldset>
    <h2 class="fs-title">Χαρτης διαδρομης</h2>
  <body id="msform">
    <div  id="map" style="height:300px; width:300px;"></div>
    <a href="logout.jsp"  style="text-decoration:none;" onclick="nocard()">  <input type="button" name="money" value="Επιστροφή στην Αρχική"></a>

	 </fieldset>
	       <script>
function nocard(){
 alert("Ευχαριστούμε για την παραγγελία ☺");
}
</script>
    <script>
      function initMap() {
        var directionsService = new google.maps.DirectionsService;
        var directionsDisplay = new google.maps.DirectionsRenderer;
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 7,
          center: {lat: 37.941624, lng: 23.653011}
        });
        directionsDisplay.setMap(map);

        var onLoadHandler = function() {
          calculateAndDisplayRoute(directionsService, directionsDisplay);
        };
		
		  directionsService.route({
			  		   <%
                    String query2 ="SELECT origin FROM coffeeorigin  ";
 java.sql.PreparedStatement Stmt2 = connection.prepareStatement(query2);
  ResultSet rs2 = Stmt2.executeQuery();
	while(rs2.next()){
             String origin = rs2.getString(1);%>
          origin: '<%{out.print(origin);%>',
		   <%
		  }}
		    Stmt2.close();
        rs2.close();
                    String query3 ="SELECT address FROM customers_hash WHERE username=? ";
 java.sql.PreparedStatement Stmt3 = connection.prepareStatement(query3);
 Stmt3.setString(1,username);
  ResultSet rs3 = Stmt3.executeQuery();
	while(rs3.next()){
             String address = rs3.getString(1);%>
			
		  
		  destination:'<%{out.print(address);%>',
	  <%}}
        
        Stmt3.close();
        rs3.close();
        %>
          travelMode: 'DRIVING'
        }, function(response, status) {
          if (status === 'OK') {
            directionsDisplay.setDirections(response);
          } else {
            window.alert('Directions request failed due to ' + status);
          }
        });
       
      }
	   <%   
connection.close();}catch (Exception e) {
                out.println(e);
            }
      %>

      function calculateAndDisplayRoute(directionsService, directionsDisplay) {
      
      }
    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCLc2YPy7z76ve6LxojcbSX8FMJRV6gzRc&callback=initMap">
    </script>
  </body>
</html>