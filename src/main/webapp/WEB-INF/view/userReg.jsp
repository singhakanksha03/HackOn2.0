<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
	<!DOCTYPE html>
	<html lang="en">

	<head>
		<link href="css/style.css" rel="stylesheet">
		<title>Self Registration</title>
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
		<nav class="navbar navbar-expand-lg navbar-dark fixed-top bg-dark pt-0 pb-0">
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
						<a class="nav-link" href="/login"><i class="fas fa-sign-in-alt mr-1"></i>Login</a>
					</li>
					
				</ul>
			</div>
		</nav>


		<div class="container-fluid text-center" id="register">
			<br>
			<div class="text-success successful pb-2 mt-4">
				<h3>${result}</h3>
			</div>
			<p class="mt-4 mb-0 pt-0 heading">
				<b>REGISTRATION</b>
			</p>
			<div class="hd-border w-50 mb-3 mx-auto"></div>

			<form action="/register" class="form-inline" method="post">

				<div class="inner-div p-2 pt-0 mb-3 mx-auto">
					<br>
					<div class="form-group pb-0">
						<label for="name" class="control-label col-sm-3 ">Name:</label> <input type="text"
							class="form-control col-sm-9" id="name" placeholder="Enter name" pattern="[A-Za-z\s]{3,}" title="Please enter the name in only alphabets"
							name="name" Required>
					</div>
					<br>
					<div class="form-group pb-0">
						<label for="dob" class="control-label col-sm-3">Date of Birth:</label> <input type="date"
							max="2002-10-04" min="1961-10-04" class="form-control col-sm-9" id="dob" title="Your age should be between 18 to 60"
							placeholder="dd-mm-yyyy" name="dob" Required>
					</div>
					<br>
					<div class="form-group pb-0">
						<label for="country" class="control-label col-sm-3">Country:</label> <select name="country"
							id="countySel" size="1" class="form-control col-sm-9" placeholder="selectCountry" Required>
							<option value="" selected="selected" Required>Select Country</option>
						</select>
					</div>

					<br>
					<div class="form-group pb-0">
						<label for="state" class="control-label col-sm-3">State:</label> <select name="state"
							id="stateSel" size="1" class="form-control col-sm-9" Required>
							<option value="" selected="selected">Select State
							</option>
						</select>
					</div>
					<br>

					<div class="form-group pb-0">
						<label for="district" class="control-label col-sm-3 ">District:</label> <select name="district"
							id="districtSel" size="1" class="form-control col-sm-9" Required>
							<option value="" selected="selected">Select District</option>
						</select>
					</div>

					<br>

					<div class="form-group pb-0">
						<label for="address" class="control-label col-sm-3">Address:</label> <input type="text"
							class="form-control col-sm-9" id="address" placeholder="Enter address" name="address" pattern="[A-Za-z0-9\s]{3,}" title="Please enter the name in only alphanumeric"
							Required>
					</div>
					<br>

					<div class="form-group pb-0">
						<label for="email" class="control-label col-sm-3">Email:</label> <input type="email"
							class="form-control col-sm-9" id="email" placeholder="Enter email" name="email"  Required>
					</div>
					<br>

					<div class="form-group pb-0">
						<label for="phone" class="control-label col-sm-3">Phone no.:</label> <input type="phonenumber"
							class="form-control col-sm-9" id="phone" pattern="[0-9]{10}" title="Enter proper phone number" placeholder="Enter Phone" name="phone" Required>
					</div>
					<br>

					<div class="form-group pb-0">
						<label for="aadhar" class="control-label col-sm-3">Aadhar no.:</label> <input type="text"
							class="form-control col-sm-9" id="aadhar" placeholder="Enter aadhar" name="aadhar" pattern="[0-9]{12}" title="Please enter your 12 digit aadhar " Required>
					</div>
					<br>

					<div class="form-group pb-0">
						<label for="blood" class="control-label col-sm-3" Required>Blood group:</label> <select name="blood"
							id="blood" class="form-control col-sm-9" Required>
							<option value="">Select Blood group</option>
							<option value="A+">A+</option>
							<option value="A-">A-</option>
							<option value="B+">B+</option>
							<option value="B-">B-</option>
							<option value="AB+">AB+</option>
							<option value="AB-">AB-</option>
							<option value="O+">O+</option>
							<option value="O-">O-</option>
						</select>
					</div>
					<br>

					<div class="form-group pb-0">
						<label for="password" class="control-label col-sm-3">Password:</label> <input type="password"
							class="form-control form-control col-sm-9" id="Newpassword" placeholder="Enter password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
							title="Must contain at least one  number and one uppercase and lowercase letter, and at least 8 or more characters"
							Required>
					</div>
					<br>
					<div class="form-group pb-0">
						<label for="password" class="control-label col-sm-3">Confirm
							Password:</label> <input type="password" class="form-control col-sm-9" id="Confirmpassword"
							placeholder="Confirm Password" name="password" Required><br>

					</div>

					<p class="registrationFormAlert text-center" style="color: red; padding:5px;"
						id="CheckPasswordMatch"></p>

					<br>
					<div class="mx-auto">
						<button type="submit" class="btn btn-primary mb-5">
							Sign Up
						</button>
					</div>
				</div>

			</form>

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
		<script>
			function checkPasswordMatch() {
				var password = $("#Newpassword").val();
				var confirmPassword = $("#Confirmpassword").val();
				if (password != confirmPassword)
					$("#CheckPasswordMatch").html("Passwords does not match!");
				else
					$("#CheckPasswordMatch").html("Passwords match.");
			}


			$(document).ready(function () {
				$("#Confirmpassword").keyup(checkPasswordMatch);
			});




		</script>


	</body>

	</html>