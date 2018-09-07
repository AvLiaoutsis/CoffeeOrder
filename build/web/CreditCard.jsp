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
    <meta charset="utf-8" />
    <title>Coffee Now</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
            <link rel="shortcut icon" href="icon.ico" />

    <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="font-awesome/css/font-awesome.min.css" />
    <script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
				<form name="reg" action="directions.jsp" method="POST"  >

<div class="container">
    <div class="row">
        <div class="col-xs-12 col-md-4 col-md-offset-4">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <div class="row">
                        <h3 class="text-center">Στοιχεία Πληρωμής</h3>
                        <img class="img-responsive cc-img" src="http://prepbootstrap.com/Content/images/shared/misc/creditcardicons.png">
                    </div>
                </div>
                <div class="panel-body">
                    <form role="form">
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="form-group">
                                    <label>Αριθμός Κάρτας</label>
                                    <div class="input-group">
                                        <input type="tel" class="form-control" placeholder="Έγκυρος αριθμός κάρτας" required="" pattern="[0-9]{16}"/>
                                        <span class="input-group-addon"><span class="fa fa-credit-card" ></span></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-7 col-md-7">
                                <div class="form-group">
                                    <label><span class="hidden-xs">Ημερομηνία Λήξης</span><span class="visible-xs-inline"> </label>
                                    <input type="tel" class="form-control" placeholder="MM / YY" required="" />
                                </div>
                            </div>
                            <div class="col-xs-5 col-md-5 pull-right">
                                <div class="form-group">
                                    <label>Κωδικός CV</label>
                                    <input type="tel" class="form-control" placeholder="CVC" required=""pattern="[0-9]{3}" />
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="form-group">
                                    
                                    <input type="text" class="form-control" placeholder="Πλήρες όνομα" required="" />
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="panel-footer">
                    <div class="row">
                        <div class="col-xs-12">
                              <input class="btn btn-warning btn-lg btn-block" type="submit" value="Παραγγελία" name="action"  > 
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
                                </form>

<style>
    .cc-img {
        margin: 0 auto;
    }
</style>
</div>
</body>
   <%  
}catch (Exception e) {
                out.println(e);
            }
      %>
</html>