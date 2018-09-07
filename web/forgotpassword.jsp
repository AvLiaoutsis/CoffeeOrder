

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="java.sql.*" %>
<header>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<link href="css/style2.css" rel="stylesheet" type="text/css"/>
                <link rel="shortcut icon" href="icon.ico" />

	       <script>
function msg(){
 alert("Ο κωδικάς σας έχει σταλεί.\n\
Έλεξτε τα email σας!");
}
</script>
 
 </header>
      <body>

 <div style="padding-top:70px"></div>
<div class="container">
	<div class="row">
		<div class="col-md-4 col-md-offset-4">
            <div class="panel panel-default">
              <div class="panel-body">
                <div class="text-center">
                  <h3><i class="fa fa-lock fa-4x"></i></h3>
                  <h2 class="text-center">Ξεχάσατε τον κωδικό σας?</h2>
                  
                  <p>Συμπληρώστε το Email σας</p>
                  <div class="panel-body">
    
                    <form action="index.jsp" onsubmit="msg();">
    
                      <div class="form-group">
                        <div class="input-group">
                          <span class="input-group-addon"><i class="glyphicon glyphicon-envelope color-blue"></i></span>
                          <input id="email" name="email" placeholder="email address" class="form-control"  type="email" required="">
                        </div>
                      </div>
                      <div class="form-group">
                        <input name="recover-submit" class="btn btn-lg btn-primary btn-block" value="Επαναφορά" type="submit">
                      </div>
                      
                      <input type="hidden" class="hide" name="token" id="token" value=""> 
                    </form>
                                           <a href="index.jsp" style="text-decoration:none;"><input type="submit" class="btn btn-lg btn-primary btn-block" value="Πίσω" name="register" ></a>

    
                  </div>
                </div>
              </div>
            </div>
          </div>
	</div>
</div>
</body>
</html>