<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="java.sql.*" %>
<html>
  <% try { session=request.getSession(true);
         String username= (String) session.getAttribute("strUSERNAME");
     if(username==null){ response.sendRedirect("index.jsp");}
       Class.forName("com.mysql.jdbc.Driver");

 %>

<head>
    <title>Coffee Now</title>
    <!-- Meta-Tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8">
    <meta name="keywords" content="Core Login Form a Responsive Web Template, Bootstrap Web Templates, Flat Web Templates, Android Compatible Web Template, Smartphone Compatible Web Template, Free Webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design">
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
                    <link rel="shortcut icon" href="icon.ico" />

    <!-- //Meta-Tags -->
    <!-- Index-Page-CSS -->
    <link rel="stylesheet" href="semi/css/style.css" type="text/css" media="all">
    <!-- //Custom-Stylesheet-Links -->
    <!--fonts -->
    <link href="//fonts.googleapis.com/css?family=Mukta+Mahee:200,300,400,500,600,700,800" rel="stylesheet">
    <!-- //fonts -->
    <!-- Font-Awesome-File -->
    <link rel="stylesheet" href="semi/css/font-awesome.css" type="text/css" media="all">
</head>

<body>
    <h1 class="title-agile text-center">Καλως ηρθατε ${onoma}</h1>
	<br><br><br>
    <div class="content-w3ls">
        <div class="agileits-grid">
       
			<br><br><br><br><br><br>
            <div class="content-bottom">
                    <div class="wthree-field">
                        <form  id="form" name="form" action="main1.jsp" method="POST">
                               <input type="text" class="agileits-btm" name="username" value="${username}" style="display: none;">
                               
                    <input type="submit"   value="παραγγελια">

                        </form>
                    </div>
					<hr>
                    <div class="wthree-field">
  <form  id="form" name="form" action="changeusers.jsp" method="POST">
         <input type="text" class="agileits-btm" name="username" value="${username}" style="display: none;">
                    <input type="submit"   value="Αλλαγη στοιχειων">

  </form>                   <hr>
                      <form  id="form" name="form" action="logout.jsp" >
                    <input type="submit"   value="Εξοδος">

                        </form>   </div>
              
            </div>
            <!-- //content bottom -->
        </div>
    </div>
  
    <!--//copyright-->
    <script src="js/jquery-2.2.3.min.js"></script>
    <!-- script for show password -->
    <script>
        $(".toggle-password").click(function () {

            $(this).toggleClass("fa-eye fa-eye-slash");
            var input = $($(this).attr("toggle"));
            if (input.attr("type") == "password") {
                input.attr("type", "text");
            } else {
                input.attr("type", "password");
            }
        });
    </script>
    <!-- /script for show password -->

</body>
<!-- //Body -->
   <%  
}catch (Exception e) {
                out.println(e);
            }
      %>
</html>