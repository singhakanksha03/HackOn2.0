<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>

	<!DOCTYPE html>
	<html lang="en">

	<head>
		<link href="css/style.css" rel="stylesheet">
		
		<title>Login User</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
			integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">


	</head>

	<body>

		<nav class="navbar navbar-expand-lg navbar-dark fixed-top bg-dark mb-0 pt-0 pb-0">
			<a class="navbar-brand" href="/">Covid Helper App</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item active">
						<a class="nav-link" href="/">Home <span class="sr-only">(current)</span></a>
					</li>
				</ul>
				<ul class="navbar-nav ml-auto">
					<!-- <li class="nav-item active">
						<a class="nav-link" href="/login"><i class="fas fa-sign-in-alt mr-1"></i>Login</a>
					</li> -->
					<li class="nav-item active">
						<a class="nav-link" href="/register"><i class="fas fa-user mr-1"></i>Self Registration</a>
					</li>
				</ul>
			</div>
		</nav>
		
		<div class="text-center center mt-0" id="login">
			<div class="w-50 mx-auto">
				<p class="mb-0 heading mx-auto">
					<b>LOGIN</b>
				</p>
				<p class="hd-border mx-auto border-dark mb-3"></p>
				<h4 class="error m-3">${error}</h4>

				<form action="/loginuser" class="form-inline" method="post">
					<div class="login mx-auto  pt-3 pb-3 pl-3 m-5">
						<div class="form-group">
							<label for="registration" class="control-label col-sm-5"><b>Reg. No.:</b></label> <input type="text"
								class="form-control col-sm-7" id="registration" placeholder="Enter Username"
								name="registration" title="Enter the correct Registration number" Required>
						</div>
						<br>
						<div class="form-group">
							<label for="pwd" class="control-label col-sm-5"><b>Password :</b></label> <input type="password"
								class=" form-control col-sm-7" id="pwd" placeholder="Enter password" name="password"
								Required>
						</div>
						<br>
						<div class="form-group form-check" style="padding: 10px;">
							<label class="form-check-label"> <input class="form-check-input" type="checkbox"
									name="remember">
								<b>Remember me</b>
							</label>
						</div>
						<br>
						<div style="padding-bottom:10px">
							<button type="submit" class="btn btn-primary text-center">Login</button>
						</div>
					</div>
				</form>

				<div class="container reg">
					<p><b>
							New User? <a href="/register" class="text-danger">Register</a> here
						</b></p>
				</div>
			</div>
		</div>
		<footer class="page-footer font-small blue bg-dark">  
			<div class="footer-copyright text-center py-1 text-light">
				&copy Copyright 2021 - Team Olympia    
			</div>    
		  
		</footer>
		
		<script src="js/back.js"></script>
		
		<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
			integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
			crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns"
			crossorigin="anonymous"></script>
		<script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js" data-auto-replace-svg="nest"></script>
	</body>


	</html>