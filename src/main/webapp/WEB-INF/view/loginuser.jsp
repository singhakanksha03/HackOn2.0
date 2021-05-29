<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
	<!DOCTYPE html>
	<html>

	<head>
		<link href="css/style.css" rel="stylesheet">
		
		<title>User details</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
			integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
		<link rel="preconnect" href="https://fonts.gstatic.com">
		<link
			href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,500;0,900;1,100;1,300;1,900&display=swap"
			rel="stylesheet">
		<link rel="preconnect" href="https://fonts.gstatic.com">
		<link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@600;700&display=swap" rel="stylesheet">


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
					<li class="nav-item active">
						<a class="nav-link" href="/logout"><i class="fas fa-sign-out-alt mr-1"></i>Logout</a>
					</li>

				</ul>
			</div>
		</nav>

		<div class="conatiner-fluid center" id="user">
			<div class="mx-auto w-80">

				<div class="text-center mb-0">
					<p class="heading mb-0">Member Details</p>
				</div>
				<div class="error mx-auto text-center">${result}</div>
				<div class="hd-border w-50 mx-auto"></div>
				<div class="form-row user pt-3 pb-3 pl-3 m-5 mx-auto">
					<div class="name">Name</div>
					<div class="value">
						${user.name}
					</div>
					<div class="name">Reg. No.</div>
					<div class="value">
						<div class="input-group">
							${user.registration}
						</div>
					</div>
					<div class="name">Reg. Date</div>
					<div class="value">
						<div class="input-group">
							${user.registrationDate}
						</div>
					</div>
					<div class="name">Email Id</div>
					<div class="value">
						<div class="input-group">
							${user.email}
						</div>
					</div>
					<div class="name">Mobile No.</div>
					<div class="value">
						<div class="input-group">
							${user.phone}
						</div>
					</div>
					<div class="name">Blood Group</div>
					<div class="value">
						<div class="input-group">
							${user.blood}
						</div>
					</div>
					<div class="name">Age</div>
					<div class="value">
						<div class="input-group">
							${user.age}
						</div>
					</div>
					<div class="name">Aadhar No.</div>
					<div class="value">
						<div class="input-group">
							${user.aadhar}
						</div>
					</div>
					<div class="name">Address</div>
					<div class="value">
						<div class="input-group">
							${user.address},${user.district},${user.state},${user.country}.
						</div>
					</div>
				</div>



				<div class="container-fluid mx-auto w-50 text-center">
					<div class="row row-cols-1 row-cols-sm-2 row-cols-md-4">
						<div class="d-inline mt-3">
							<a href="/update?aadhar=${user.aadhar}"><button type="button" class="btn btn-primary">
									Edit Details</button></a>
						</div>

						<div class="d-inline mt-3"><a href="/eligibility?aadhar=${user.aadhar}"><button type="button"
									class="btn btn-info">Eligibility
									Check</button></a></div>
						<div class="d-inline mt-3"><a href="/find-Donor?aadhar=${user.aadhar}"><button type="button"
									class="btn btn-info">Find
									Donors</button></a></div>
						<div class="d-inline mt-3">
							<a href="/delete?aadhar=${user.aadhar}"><button type="button" class="btn btn-danger">
									Delete</button></a>
						</div>
					</div>
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