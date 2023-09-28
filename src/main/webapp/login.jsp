 
<%@page import="com.mysql.cj.protocol.Message"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="Adarsh.blog.Entities.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>


<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body >
	
	<%@include file="normal_navbar.jsp" %>
	<main class="d-flex align-items-center login-background cliplogin-background" style="height: 70vh;">
	<div class="container " >
	
	<div class="row">
	
	<div class="col-md-4 offset-md-4">
	
	<div class="card">
	<div class="card-header primary-background text-center">
		<p><span class="fa fa-user-plus"></span> Login</p>
	</div>
	
	
	
	 <%
                  message msg = (message) session.getAttribute("message");
                   if (msg != null)
                    {
         %>
  <div class="alert  <%=msg.getCssClass() %>" role="alert">
                                
                                <%=msg.getContent() %>
                            </div> 
         
         <% 
         
                     }
                   session.removeAttribute("message");
                   %>
	
	
	<div class="card-body">
	
<form action="Loginservlet" method="post">
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="user_email" placeholder="Enter email">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1" name="user_password" placeholder="Password">
  </div>
 
  <div class="text-center">
  <button type="submit" class="btn btn-primary ">Submit</button>
  </div>
</form>
		
	</div>
	
	</div>
	
	
	</div>
	
	</div>
	
	</div>
	
	</main>
	
	
	
	
	
	
	
<script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	
</body>
</html>
