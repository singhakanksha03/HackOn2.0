<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
	<!DOCTYPE html>
	<html lang="en">

	<head>
		<link href="css/style.css" rel="stylesheet">
		
		<title>Remdesivir Availability</title>
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
				
			</div>
		</nav>
<div id="rem">
		<div class="container-fluid text-center">
			<div class="text-center mt-5 mb-0 pt-0">
				<a href="/view-remedesivir-form" class="btn btn-outline-dark btn-md button">SEARCH FOR REMDESIVIR</a>
			</div>
		</div>

		<div class="container-fluid text-center">
			<br>
			<div class="successful pb-3">
				<h3 class="text-success">${result}</h3>
			</div>
			<p class="mt-2 mb-0 pt-0 heading">
				<b>INSERT DATA FOR REMDESIVIR</b>
			</p>
			<div class="hd-border w-50 mb-3 mx-auto"></div>
			<!-- <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Magni tempore hic eius, necessitatibus omnis rem
				optio id voluptatem tenetur adipisci facilis temporibus modi quia, nulla eos culpa quae dolorem
				corrupti.</p> -->
			<form action="/remedesivir-data" class="form-inline" method="post">

				<div class="p-3 pt-0 mb-0 mx-auto common-div">
					<br>
					<div class="form-group">
						<label for="name" class="control-label col-sm-3 ">Name Of Hospital/Store:</label> <input
							type="text" class="form-control col-sm-9" id="name" placeholder="Enter name" name="name"
							pattern="[A-Za-z\s]{3,}" Required>
					</div>
					<br>


					<div class="form-group">
						<label for="country" class="control-label col-sm-3">Country:</label> <select name="country"
							id="countySel" size="1" class="form-control col-sm-9" placeholder="selectCountry">
							<option value="" selected="selected">Select Country</option>
						</select>
					</div>

					<br>
					<div class="form-group">
						<label for="state" class="control-label col-sm-3">State:</label> <select name="state"
							id="stateSel" size="1" class="form-control col-sm-9">
							<option value="" selected="selected">Select State
							</option>
						</select>
					</div>
					<br>

					<div class="form-group">
						<label for="district" class="control-label col-sm-3 ">District:</label> <select name="district"
							id="districtSel" size="1" class="form-control col-sm-9">
							<option value="" selected="selected">Select District</option>
						</select>
					</div>

					<br>

					<div class="form-group">
						<label for="address" class="control-label col-sm-3">Address:</label> <input type="text"
							class="form-control col-sm-9" id="address" placeholder="Enter address" name="address" pattern="[A-Za-z\s]{1,}"
							Required>
					</div>

					<br>

					<div class="form-group">
						<label for="phone" class="control-label col-sm-3">Phone no.:</label> <input type="phonenumber"
							class="form-control col-sm-9" id="phone" placeholder="Enter Phone" pattern="[0-9]{10}" name="phone" title="Please Enter 10 digits long number only" Required>
							
					</div>
					<br>
					<div class="mx-auto">
						<button type="submit" class="btn btn-primary mb-5">
							Submit
						</button>
					</div>
				</div>

			</form>

		</div>
	</div>
		
		<footer class="page-footer font-small blue bg-dark">  
			<div class="footer-copyright text-center py-1 text-light">
				&copy Copyright 2021 - Team Olympia     
			</div>    
		  
		</footer>


		<script src="js/country.js"></script>
		<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
			integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
			crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns"
			crossorigin="anonymous"></script>
		<script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js" data-auto-replace-svg="nest"></script>


	</body>

	</html>