
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
  <meta charset="UTF-8">
  <title>Coffee Now</title>
                  <link rel="shortcut icon" href="icon.ico" />

  
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
    
  
      <link rel="stylesheet" href="css/styleparagelia.css">

   <script>
       //Δημιουργία συνάρτηση για χάρτη
      function initMap() {
        var bounds = new google.maps.LatLngBounds;
        var markersArray = [];
      <%
                    String query3 ="SELECT address FROM customers_hash WHERE USERNAME=? ";
 java.sql.PreparedStatement Stmt3 = connection.prepareStatement(query3);
 
 Stmt3.setString(1,username);
  ResultSet rs3 = Stmt3.executeQuery();
	while(rs3.next()){
             String address = rs3.getString(1);%>
        var origin1 ='<%{out.print(address);%>';<%}
        }
        Stmt3.close();
        rs3.close();
        %>
		
                        
        <%
                    String query ="SELECT origin FROM coffeeorigin  ";
 java.sql.PreparedStatement Stmt = connection.prepareStatement(query);
  ResultSet rs4 = Stmt.executeQuery();
	while(rs4.next()){
             String origin = rs4.getString(1);%>
        var destinationA ='<%{out.print(origin);%>';<%
        }}
        Stmt.close();
        rs4.close();
        %>
                

		
        var geocoder = new google.maps.Geocoder;//Νεα μεταβλητή Geocoder

        var service = new google.maps.DistanceMatrixService;//Νεα μεταβλητή Service
        service.getDistanceMatrix({
          origins: [origin1],//Αρχή 
          destinations: [destinationA],//Τέλος
          travelMode: 'DRIVING',
          unitSystem: google.maps.UnitSystem.METRIC,
          avoidHighways: false,
          avoidTolls: false
        }, function(response, status) {
          if (status !== 'OK') {
            alert('Error was: ' + status);
          } else {
            var originList = response.originAddresses;
            var destinationList = response.destinationAddresses;
            var outputDiv = document.getElementById('output');
            outputDiv.innerHTML = '';

            var showGeocodedAddressOnMap = function(asDestination) {//Θα ψάξει εδώ τον δρόμο
              return function(results, status) {
                if (status === 'OK') {
                  map.fitBounds(bounds.extend(results[0].geometry.location));
                  markersArray.push(new google.maps.Marker({
                    map: map,
                    position: results[0].geometry.location,
                    icon: icon
                  }));
                } else {
                  alert('Geocode was not successful due to: ' + status);
                }
              };
            };

            for (var i = 0; i < originList.length; i++) {//Βγάζει αποτελέσματα
              var results = response.rows[i].elements;
              geocoder.geocode({'address': originList[i]},
                  showGeocodedAddressOnMap(false));
              for (var j = 0; j < results.length; j++) {
                geocoder.geocode({'address': destinationList[j]},
                    showGeocodedAddressOnMap(true));
                outputDiv.innerHTML += 
                    results[j].duration.text ;
              }
            }
          }
        });
      }

    </script>
    <script 
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAR2t6d8txj3zI7jvr6-toM5vH8ryNO8NI&callback=initMap">
    </script>
        <script>
function nocard(){
 alert("Ευχαριστούμε για την παραγγελία ☺");
}
</script>

</head>

<body>
  <!-- multistep form -->
<form id="msform">
  <!-- progressbar -->
  <ul id="progressbar">
    <li class="active">Καφες</li>
    <li>ζάχαρη</li>
    <li>Στοιχεια Παραδοσης</li>
    <li>Μεθοδος πληρωμης</li>
  </ul>
  <!-- fieldsets -->
  <fieldset>
      <form id="msform">
    <h2 class="fs-title">Επιλογη Καφε</h2>
    <h3 class="fs-subtitle"></h3>
    <table align="center" width="100%" cellpadding="0" cellspacing="0" border="0"> 
       <%  String query2 ="SELECT * FROM coffee  ";
 java.sql.PreparedStatement Stmt2 = connection.prepareStatement(query2);

  ResultSet rs2 = Stmt2.executeQuery();
	while(rs2.next()){
            %>
<tr>
    <td>Espresso:&nbsp;&nbsp;  <%
         Double price = rs2.getDouble(1);
        {out.println(price);}
        %>€</td><td> <input type="radio" name="coffee" value="Espresso" checked="checked"></td>
</tr>
<tr>
   <td> Cappucino:&nbsp;&nbsp;<%
         price = rs2.getDouble(2);
        {out.println(price);}
        %>€</td><td> <input type="radio" name="coffee" value="Cappucino" ></td>
</tr>
<tr>
   <td> Freddo Espresso:&nbsp;&nbsp;<%
         price = rs2.getDouble(3);
        {out.println(price);}
        %>€</td><td> <input type="radio" name="coffee" value="Freddo Espresso" ></td>
</tr>
<tr>
	<td>Freddo Cappucino:&nbsp;&nbsp;  <%
        price = rs2.getDouble(4);
        {out.println(price);}
        %>€</td><td> <input type="radio" name="coffee" value="Freddo Cappucino"></td>
</tr>
<tr>
  <td>  Freddocino:&nbsp;&nbsp; <%
        price = rs2.getDouble(5);
        {out.println(price);}
        
 }%>€</td><td> <input type="radio" name="coffee" value="Freddocino" ></td>
</tr>
    </table>
	<br>
 <a href="hall.jsp" style="text-decoration:none;">  <input type="button" name="previous" class="previous action-button" value="Προηγούμενο" /></a>
 
    <input type="button" name="next" class="next action-button" value="Επόμενο" />
  </fieldset>
  <fieldset>
    <h2 class="fs-title">Ζαχαρη</h2>
    <h3 class="fs-subtitle"></h3>
      <table align="center" width="100%" cellpadding="0" cellspacing="0" border="0"> 
<tr>
    
    <td>  Σκέτο</td> <td><input type="radio" name="sugar" value="no" checked="checked"></td>
</tr>
<tr>
  <td>  Μέτριο</td><td><input type="radio" name="sugar" value="two" ></td>
</tr>
<tr>
  <td>  Γλυκό</td><td><input type="radio" name="sugar" value="for" ></td>
</tr>
    </table>
        <input type="button" name="previous" class="previous action-button" value="Προηγούμενο" />
    <input type="button" name="next" class="next action-button" value="Επόμενο" />
  </fieldset>
  <fieldset>
    <h2 class="fs-title">Στοιχεια Παραδοσης</h2>
    <h3 class="fs-subtitle"></h3>
     <table align="center" width="100%" cellpadding="0" cellspacing="0" border="0"> 
         <tr>
             <td> Όνομα:</td><td>
 <%
  String query1 ="SELECT first_name,last_name,telnumber,address FROM customers_hash WHERE USERNAME=? ";
 java.sql.PreparedStatement Stmt1 = connection.prepareStatement(query1);
 Stmt1.setString(1,username);
  ResultSet rs = Stmt1.executeQuery();
	while(rs.next()){					
     %><%
     String name = rs.getString(1);
        {out.println(name);}
%>
             </td></tr> <tr><td>Επίθετο:</td><td>
<%
    String last = rs.getString(2);
        {out.println(last);}
%>
             </td>   </tr><tr><td>Τηλέφωνο:</td><td>
<%
    String number= rs.getString(3);
     {out.println(number);}

%>
         </td></tr>
<tr>
    <td>Διεύθυνση:</td><td>
 <%
    String address = rs.getString(4);
        {out.println(address);}
}%>       
</tr>
 </table>
       <input type="button" name="previous" class="previous action-button" value="Προηγούμενο" />
     <%   Stmt1.close();
   rs.close();
connection.close();}catch (Exception e) {
                out.println(e);
            }
      %>
    <input type="button" name="next" class="next action-button" value="Επόμενο" />
  </fieldset>
   <fieldset>
    <h2 class="fs-title">Μεθοδος πληρωμης</h2>
    <h3 class="fs-subtitle">Εκτιμώμενος χρόνος: <div id="output"></div></h3>
    <a href="directions.jsp" style="text-decoration:none;" >  <input type="button" name="money" value="Αντικαταβολή"></a>
    <a href="CreditCard.jsp" style="text-decoration:none;" onclick="card()"><input type="button" name="money" value="Με πιστωτική κάρτα" ></a>
    <input type="button" name="previous" class="previous action-button"  value="Προηγούμενο" />
  </fieldset>
</form>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js'></script>
    <script  src="js/indexparagelia.js"></script>
</body>
</html>