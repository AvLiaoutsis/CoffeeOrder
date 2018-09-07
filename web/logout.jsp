

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="java.sql.*" %>

<% 
session.setAttribute("msg2","");

session.invalidate();
session=request.getSession(true);
response.setHeader("Cache-Control","no-cache");
response.setHeader("Cache-Control","no-store");
response.sendRedirect("index.jsp");

%>


