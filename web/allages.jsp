
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
       <% try { session=request.getSession(true);
         String username= (String) session.getAttribute("strUSERNAME");
     if(username==null){ response.sendRedirect("adminlogin.jsp");}

 %>
	<title>Coffee Now</title>
	<meta charset="UTF-8">

	<meta name="viewport" content="width=device-width, initial-scale=1">
                        <link rel="shortcut icon" href="icon.ico" />

<!--===============================================================================================-->
	<link rel="icon" type="image/png" href="adminallages/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="adminallages/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="adminallages/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="adminallages/vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="adminallages/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="adminallages/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="adminallages/vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="adminallages/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="adminallages/css/util.css">
	<link rel="stylesheet" type="text/css" href="adminallages/css/main.css">
<!--===============================================================================================-->
<script>
function card(){
 alert("Η Βάση ενημερώθηκε!");
}
</script>
</head>
<body>


	<div class="container-contact100">
		<div class="wrap-contact100">
			<form class="contact100-form validate-form" action="allages2.jsp" method="POST" onsubmit="card()"> 
				<span class="contact100-form-title">
					Διαχειριση
				</span>
				<div class="wrap-input100 validate-input" data-validate="Εισάγετε Διεύθυνση">
					<input class="input100" type="text" name="address" placeholder="Αλλαγή Διέυθυνσης Επιχείρισης">
					<span class="focus-input100"></span>
				</div>
				<div class="wrap-input100 validate-input" data-validate="Εισάγετε Τιμή">
					<input class="input100" type="text" name="ESP" placeholder="Τιμή Espresso"  >
					<span class="focus-input100"></span>
				</div>
				<div class="wrap-input100 validate-input" data-validate="Εισάγετε Τιμή">
					<input class="input100" type="text" name="CAP" placeholder="Τιμή Cappucino" >
					<span class="focus-input100"></span>
				</div>
				<div class="wrap-input100 validate-input" data-validate="Εισάγετε Τιμή">
					<input class="input100" type="text" name="FRE" placeholder="Τιμή Freddo Espresso">
					<span class="focus-input100"></span>
				</div>
				<div class="wrap-input100 validate-input" data-validate="Εισάγετε Τιμή">
					<input class="input100" type="text" name="FRC" placeholder="Τιμή Freddo Cappucino">
					<span class="focus-input100"></span>
				</div>
					<div class="wrap-input100 validate-input" data-validate="Εισάγετε Τιμή">
					<input class="input100" type="text" name="FRECCINO" placeholder="Τιμή Freddoccino">
					<span class="focus-input100"></span>
				</div>
				<div class="container-contact100-form-btn">
					<button class="contact100-form-btn">
						<span>
							<i class="fa fa-paper-plane-o m-r-6" aria-hidden="true"></i>
							Επιβεβαιωση
						</span>
					</button>
				</div>
			</form>
		</div>                            	       
	</div>



	<div id="dropDownSelect1"></div>

<!--===============================================================================================-->
	<script src="adminallages/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="adminallages/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="adminallages/vendor/bootstrap/js/popper.js"></script>
	<script src="adminallages/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="adminallages/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="adminallages/vendor/daterangepicker/moment.min.js"></script>
	<script src="adminallages/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="adminallages/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="adminallages/js/main.js"></script>

<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-23581568-13');
</script>

</body>
   <%   }catch (Exception e) {
                out.println(e);
            }
      %>
</html>
