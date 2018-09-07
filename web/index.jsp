

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
 
 
    <head>
      
        <link rel="shortcut icon" href="icon.ico" />
        <link rel="stylesheet" type="text/css" href="mystyle.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Coffee Now</title>
        <style>
            .frame{
               <!-- background-color: #EAF4D9;-->
            }
            
        </style>
    </head>

    <body>

        <div class="body"></div>
		<div class="grad"></div>
		<div class="header">
			<div>Coffee<span>Now</span></div>
		</div>
		<br>
		<div class="login">
                            <h2><font color="black" >${msg3}</font></h2>

                            <form action="login.jsp">
				<input type="text" placeholder="Όνομα χρήστη" name="username"><br>
				<input type="password" placeholder="Κωδικός" name="password"><br>
                                <input type="submit" value="Είσοδος" name="action">
                            </form>
                    <a href="register.jsp" style="text-decoration:none;"><input type="submit" value="Εγγραφή" name="register" ></a>
                     <a href="forgotpassword.jsp" style="text-decoration:none;"><input type="submit" value="Ξεχάσατε τον κωδικό σας;" name="register" ></a>

                    <br><br>
<h2><font color="black" >${msg2}</font></h2>
<iframe src="Output.txt" frameborder="0" height="50"
                                width="95%" class="frame"></iframe>
		</div>



    
</body>

</html>

