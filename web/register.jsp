
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>

  <head>

    <script src="http://code.jquery.com/jquery-2.1.0.min.js"></script>

 <style>
    #form label{float:left; width:140px;}
    #error_msg{color:red; font-weight:bold;}
 </style>

 <script>
    $(document).ready(function(){//Jquery για έλεγχο
        var $submitBtn = $("#form input[type='submit']");
        var $passwordBox = $("#password");
        var $confirmBox = $("#confirm_password");
        var $errorMsg =  $('<span id="error_msg">Οι κωδικοί δεν είναι ίδιοι.</span>');

        // This is incase the user hits refresh - some browsers will maintain the disabled state of the button.
        $submitBtn.removeAttr("disabled");

        function checkMatchingPasswords(){
            if($confirmBox.val() != "" && $passwordBox.val != ""){
                if( $confirmBox.val() != $passwordBox.val() ){
                    $submitBtn.attr("disabled", "disabled");
                    $errorMsg.insertAfter($confirmBox);
                }
            }
        }

        function resetPasswordError(){
            $submitBtn.removeAttr("disabled");
            var $errorCont = $("#error_msg");
            if($errorCont.length > 0){
                $errorCont.remove();
            }  
        }


        $("#confirm_password, #password")
             .on("keydown", function(e){
                /* only check when the tab or enter keys are pressed
                 * to prevent the method from being called needlessly  */
                if(e.keyCode == 13 || e.keyCode == 9) {
                    checkMatchingPasswords();
                }
             })
             .on("blur", function(){                    
                // also check when the element looses focus (clicks somewhere else)
                checkMatchingPasswords();
            })
            .on("focus", function(){
                // reset the error message when they go to make a change
                resetPasswordError();
            })

    });
  </script>
      
<title>Coffee Now</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Custom Theme files -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- //Custom Theme files -->
<!-- web font -->
<link href="//fonts.googleapis.com/css?family=Old+Standard+TT:400,400i,700" rel="stylesheet">
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'><!--web font-->
                <link rel="shortcut icon" href="icon.ico" />

<!-- //web font -->
</head>
<body>
        <div class="main main-agileits">
		<h1></h1>           
		<div class="main-agilerow"> 
			<div class="signup-wthreetop">
				<h2>Φόρμα Εγγραφής</h2>
			</div>	
			<div class="contact-wthree">
				<form  id="form" name="form" action="register1.jsp" method="POST">
					<h3>Βήμα 1:</h3>
					<div class="form-w3step1">
						<input type="text" name="first_name" placeholder="Όνομα " required=""> 
                                                <input type="text" name="last_name" placeholder="Επίθετο" required=""> 
						<input type="email" class="email agileits-btm" name="email" placeholder="Email" required=""> 
					</div> 
                                        <h3>Βήμα 2:<span id="error_msg">${msg}</span></h3>
					<div class="form-w3step1">  
                                            
						<input type="text" name="username" placeholder="Όνομα χρήστη" required="">
						<input type="password" name="password"  id="password" placeholder="Κωδικός" required="">
						<input type="password" class="agileits-btm" name="password2" id="confirm_password" placeholder="Επιβεβαίωση κωδικού" required="">
					</div>
					<h3>Βήμα 3:</h3>
					<div class="form-w3step1 w3ls-formrow">
						<input type="text" name="telnumber" placeholder="Αριθμός τηλεφώνου" required="" pattern="[1-9]{1}[0-9]{9}">
						<input type="text" class="agileits-btm" name="address" placeholder="Διεύθυνση" required="">
					</div>
                                        <br><br>
					<input type="submit" value="Εγγραφή" name="submit" >
				</form>
                                        <br>
                                          <form  id="form" name="form" action="logout.jsp" >
                    <input type="submit"   value="Πίσω">

                        </form>
			</div>  
		</div>	
	</div>	        
    </body>
</html>

