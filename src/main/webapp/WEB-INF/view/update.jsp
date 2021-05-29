<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
	<!DOCTYPE html>
	<html>

	<head>
		<link href="css/style.css" rel="stylesheet">
		<title>Update details</title>
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

		<nav class="navbar navbar-expand-lg navbar-dark fixed-top bg-dark mb-0">
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

		<div class="container-fluid text-center" id="update">

			<div class="text-center mb-0">
				<p class="heading mb-0">Update User</p>
			</div>
			<div class="hd-border w-50 mx-auto mb-4 mt-0"></div>
			<form class="form-inline" method="POST" action="/update-user">
				<div class="inner-div p-3 mb-3 mx-auto">
					<input type="hidden" name="idno" value="${user.idno}" />
					<br>
					<div class="form-group">
						<label for="name" class="control-label col-sm-3">Aadhar</label> <input type="text"
							class="form-control col-sm-9" id="aadhar" value="${user.aadhar}" name="aadhar" readonly>
					</div>
					<br>
					<div class="form-group">
						<label for="name" class="control-label col-sm-3">Name:</label> <input type="text"
							class="form-control col-sm-9" id="name" value="${user.name}" name="name"
							pattern="[A-Za-z\s]{3,}" title="Please enter the name in only alphabets" Required>
					</div>
					<br>
					<div class="form-group">
						<label for="country" class="control-label col-sm-3">Country:</label> <select name="country"
							id="countySel" size="1" class="form-control col-sm-9" placeholder="Country" Required>
							<option value="${user.country}" selected="selected">${user.country}</option>
						</select>
					</div>

					<br>
					<div class="form-group">
						<label for="state" class="control-label col-sm-3">State:</label> <select name="state"
							id="stateSel" size="1" class="form-control col-sm-9" Required>
							<option value="${user.state}" selected="selected">${user.state}
							</option>
						</select>
					</div>
					<br>

					<div class="form-group">
						<label for="district" class="control-label col-sm-3 ">District:</label> <select name="district"
							id="districtSel" size="1" class="form-control col-sm-9" Required>
							<option value="${user.district}" selected="selected">${user.district}</option>
						</select>
					</div>

					<br>

					<div class="form-group">
						<label for="address" class="control-label col-sm-3">Address:</label> <input type="text"
							class="form-control col-sm-9" id="address" value=${user.address} name="address"
							pattern="[A-Za-z0-9\s]{3,}" title="Please enter the name in only alphanumeric" Required
							autofocus>
					</div>
					<br>

					<div class="form-group">
						<label for="email" class="control-label col-sm-3">Email:</label> <input type="email"
							class="form-control col-sm-9" id="email" value=${user.email} name="email" Required
							autofocus>
					</div>
					<br>


					<div class="form-group">
						<label for="phone" class="control-label col-sm-3">Phone no.:</label> <input type="phonenumber"
							class="form-control col-sm-9" id="phone" value=${user.phone} name="phone"
							pattern="[0-9]{10}" title="Enter proper phone number" Required autofocus>
					</div>

					<div class="mt-5 ml-5 mr-5 form-group">
						<a href="/go-back?aadhar=${user.aadhar}"><button type="button" class="btn btn-info mr-auto">
								Go back</button></a>
						<button type="submit" class="btn btn-primary ml-auto">
							Update</button>

					</div>
				</div>

			</form>

		</div>
		<footer class="page-footer font-small blue bg-dark">  
			<div class="footer-copyright text-center py-1 text-light">
				&copy Copyright 2021 - Team Olympia
			</div>    
		  
		</footer>
		<script src="js/back.js"></script>

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