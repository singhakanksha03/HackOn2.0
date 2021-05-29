<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<link href="css/style.css" rel="stylesheet">

		<title>Oxygen Availability</title>
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

<script src="js/submit.js"></script>

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
		
		
		<div class="container-fluid text-center" id="oxy">
			<p class="mt-5 mb-0 pt-0 heading">
				<b>SEARCH FOR OXYGEN</b>
			</p>
			<div class="hd-border w-50 mb-3 mx-auto"></div>
			
			<form action="/view-data" class="form-inline" method="post">

				<div class="row mt-3 mb-3 mx-auto">
					
					<br>
					
					
					<div class="form-group pl-3">
						<label for="country" class="control-label col-sm-3">Country:</label> <select name="country"
							id="countySel" size="1" class="form-control col-sm-9" placeholder="selectCountry" required>
							<option value="" selected="selected">Select Country</option>
						</select>
					</div>

					<br>
					<div class="form-group pl-3">
						<label for="state" class="control-label col-sm-3">State:</label> <select name="state"
							id="stateSel" size="1" class="form-control col-sm-9" required>
							<option value="" selected="selected">Select State
							</option>
						</select>
					</div>
					
					<br>
					<div class="form-group pl-3">
						<label for="district" class="control-label col-sm-3 ">District:</label> <select name="district"
							id="districtSel" size="1" class="form-control col-sm-9" required>
							<option value="" selected="selected">Select District</option>
						</select>
					</div>

					<br>
					<div class=" container row mt-3">
						<button type="submit" class="btn btn-primary mb-5 mx-auto" id="submit">
							Submit
						</button>
					</div>
				</div>

			</form>
			
			<div class="container-fluid text-center" id="tasksDiv">
				<div>
				<h3>All Details</h3>
				<hr>
				<div class="table-responsive">
					<table class="table table-striped table-bordered">
						<thead>
							<tr>
								<th>Name</th>
								<th>Address</th>
								<th>Phone no.</th>
								

							</tr>
						</thead>
						<tbody>
							<c:forEach var="oxygen" items="${oxygens}">
								<tr class="table-success">

									<td>${oxygen.name}</td>
									<td>${oxygen.address},${oxygen.district},${oxygen.state},${oxygen.country}.</td>
									<td>${oxygen.phone}</td>
									

								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		<footer class="page-footer font-small fixed-bottom blue bg-dark">  
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