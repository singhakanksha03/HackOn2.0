<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<!DOCTYPE html>
		<html>

		<head>
			<link href="css/style.css" rel="stylesheet">
			<title>Donor's  Details</title>
			<meta charset="utf-8">
			<meta name="viewport" content="width=device-width, initial-scale=1">
			<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
				integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l"
				crossorigin="anonymous">
			<link rel="preconnect" href="https://fonts.gstatic.com">
			<link
				href="https://fonts.googleapis.com/css2?family=Caveat:wght@700&family=EB+Garamond:ital,wght@1,700&family=Lobster&display=swap"
				rel="stylesheet">


		</head>

		<body>
			<nav class="navbar navbar-expand-lg navbar-dark fixed-top bg-dark mb-0 pt-0 pb-0">
				<a class="navbar-brand" href="/">Covid Helper App</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
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
							<a class="nav-link" href="/"><i class="fas fa-sign-out-alt mr-1"></i>Logout</a>
						</li>

					</ul>
				</div>
			</nav>
			<div class="mt-5 ml-5 mr-5 form-group">
				<a href="/go-back?aadhar=${user.aadhar}"><button type="button" class="btn btn-info mr-auto">
						Go back</button></a>
			</div>
			<div class="container-fluid text-center" id="tasksDiv">
				
				<h3>All Donors</h3>
				<hr>
				<div class="table-responsive">
					<table class="table table-striped table-bordered">
						<thead>
							<tr>
								<th>Name</th>
								<th>Address</th>
								<th>Phone no.</th>
								<th>Email</th>

							</tr>
						</thead>
						<tbody>
							<c:forEach var="user" items="${users}">
								<tr class="table-success">

									<td>${user.name}</td>
									<td>${user.address},${user.district},${user.state},${user.country}.</td>
									<td>${user.phone}</td>
									<td>${user.email}</td>

								</tr>
							</c:forEach>
						</tbody>
					</table>
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