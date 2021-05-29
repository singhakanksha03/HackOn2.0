<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
	<html lang="en">

	<head>
		<link href="../css/style.css" rel="stylesheet">
		<title>Logout</title>
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
				
			</div>
		</nav>	
	 <div class="container-fluid" id="logout">
		<div class="mt-5 text-center">
            <h1 class="text-danger">Session Expired !!! Login Again</h1><br>
            <a href="/login">Click Here to Login</a>
                  
               
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