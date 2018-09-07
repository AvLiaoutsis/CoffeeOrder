
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
<!-- Custom Theme files -->
<link href="css2/style.css" rel="stylesheet" type="text/css" media="all"/>
                <link rel="shortcut icon" href="icon.ico" />

<!-- for-mobile-apps -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
<meta name="keywords" content="Trendy Signup Form Responsive, Login form web template, Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<!-- //for-mobile-apps -->
<!-- font-awesome icons -->
<link href="css2/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
<!--Google Fonts-->
<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
<script src="js/jquery-1.11.1.min.js"></script>
  <script>
function msg(){
 alert("Οι αλλαγές έγιναν!");
}
</script>
</head>
<body>
<div class="wthree-dot">
	<h1>Λογαριασμος</h1>
	<div class="profile">
		<div class="wrap">
			<div class="wthree-grids">
				<div class="content-left">
					<div class="content-info">
						<h2>Στοιχεία λογαρισμού</h2><br>
					    <table align="center" width="100%" cellpadding="0" cellspacing="0" border="0"> 
         <tr>
             <td> Όνομα:
 <%
  String query1 ="SELECT first_name,last_name,email,telnumber,address,username FROM customers_hash WHERE username=? ";
 java.sql.PreparedStatement Stmt1 = connection.prepareStatement(query1);
 Stmt1.setString(1,username);
  ResultSet rs = Stmt1.executeQuery();
	while(rs.next()){					
     %><%
     String name = rs.getString(1);
        {out.println(name);}
%>
             </td></tr> <tr><td>Επίθετο: 
<%
    String last = rs.getString(2);
        {out.println(last);}
%>
             </td></tr> <tr><td>Email: 
<%
    String email = rs.getString(3);
        {out.println(email);}
%>
             </td>   </tr><tr><td>Τηλέφωνο: 
<%
    String number= rs.getString(4);
     {out.println(number);}

%>
         </td></tr>
<tr>
    <td>Διεύθυνση:
 <%
    String address = rs.getString(5);
        {out.println(address);}
%>       </td>
</tr>
 </table>
							<div class="clear"> </div>
						</div>
						
						
					</div>
				</div>
				<div class="content-main">
					<div class="w3ls-subscribe">
						<h4>Αλλαγη Στοιχειων</h4>
						<form id="form" name="form" action="register2.jsp" method="POST" onsubmit="msg();">
							<input type="text" name="first_name" placeholder="Όνομα " required=""> 
                                                <input type="text" name="last_name" placeholder="Επίθετο" required=""> 
						<input type="email" class="email agileits-btm" name="email" placeholder="Email" required=""> 
							<input type="text" name="telnumber" placeholder="Αριθμός τηλεφώνου" required="" pattern="[1-9]{1}[0-9]{9}">
						<input type="text" class="agileits-btm" name="address" placeholder="Διεύθυνση" required="">

                                                <input type="text" class="agileits-btm" name="username" value="<%
    String username2 = rs.getString(6);
        {out.println(username2);}
}%>" style="display: none;">

							<input type="submit" value="Αλλαγη">
						</form>
<br>
<form action="hall.jsp">
    <input type="submit" value="Πισω">
</form>
					</div>
				</div>
				<div class="clear"> </div>
			</div>
			
		</div>
	</div>
</div>
   <%   Stmt1.close();
   rs.close();
connection.close();}catch (Exception e) {
                out.println(e);
            }
      %>
<script src="js/responsiveslides.min.js"></script>
									<script>
										// You can also use "$(window).load(function() {"
										$(function () {
										  // Slideshow 4
										  $("#slider4").responsiveSlides({
											auto: true,
											pager:true,
											nav:false,
											speed: 400,
											namespace: "callbacks",
											before: function () {
											  $('.events').append("<li>before event fired.</li>");
											},
											after: function () {
											  $('.events').append("<li>after event fired.</li>");
											}
										  });
									
										});
									 </script>
									<!--banner Slider starts Here-->
</body>
</html>