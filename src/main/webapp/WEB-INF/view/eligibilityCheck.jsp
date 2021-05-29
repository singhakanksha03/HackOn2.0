<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
	<!DOCTYPE html>
	<html>

	<head>
		
		<link href="css/style.css" rel="stylesheet">
		
		<title>Eligibility Check</title>
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

	<body>
		<nav class="navbar navbar-expand-lg navbar-dark fixed-top bg-dark mb-0 pb-0 pt-0">
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

		<div class="conatiner-fluid text-center" id="eligibility">
			<div class="mx-auto">

				<div class="text-center mb-0">
					<p class="heading mt-5">Eligibility Check</p>
				</div>
				<div class="hd-border w-50 mx-auto m-3 "></div>
				<form class="form-inline" method="post" action="/check?aadhar=${user.aadhar}">
					<div class="user p-3 pt-0 mb-3 mx-auto w-50">
						<div class="form-group">
							<label name="covid" id="covid"> Have You Been Covid-19
								positive:</label> <input type="radio" id="Yes" name="covid" value="Yes"  required>
							<label for="Yes">Yes</label> <input type="radio" id="No" name="covid" value="No" onclick="showhide()"> <label
								for="No">No</label><br>
						</div>
						<div>
							<p id="text">
						</div>
						<br>

						<div class="form-group" style="display: none" id="cured">
							<label name="cured"> Are You Cured:</label> <input type="radio" id="Yes" name="cured"
								value="Yes" onclick="require()">
							<label for="Yes">Yes</label>
							<input type="radio" id="No" name="cured" value="No" onclick="showhide()"> <label for="No" >No</label><br>
						</div>
						<div>
							<p id="text2">
						</div>
						<br>
						<div id="ques" style="display: none;">
							<div class="form-group" style="padding: 10px;">
								<label name="days" id="days">Cured Before How Many Days:</label> <input type="radio"
									id="less" name="days" value="less"> <label for="less">Less than 14 days</label>
								<input type="radio" id="between" name="days" value="between"> <label
									for="between">Between 14
									to 40 days</label>
								<input type="radio" id="more" name="days" value="more"> <label for="more">More
									than 40 days</label><br>
							</div>
							<br>
							<div class="form-group" style="padding: 10px;">
								<label name="haemoglobin" id="haemoglobin"> Haemoglobin
									level:</label> <input type="radio" id="normal" name="haemoglobin" value="normal">
								<label for="normal">12g/dL or More</label>
								<input type="radio" id="not normal" name="haemoglobin" value="not normal"> <label
									for="not normal">Less
									than 12g/dL</label><br>
							</div>
							<br>
							<div class="form-group" style="padding: 10px;">
								<label name="weight" id="weight"> Weight:</label> <input type="radio" id="proper"
									name="weight" value="proper"> <label for="proper">55kg or More</label> <input
									type="radio" id="underweight" name="weight" value="underweight"> <label
									for="underweight">Less than 55kg</label><br>
							</div>
							<br>
							<div class="form-group" style="padding: 10px;">
								<label name="disease" id="disease"> Are You suffering from
									any of the below mentioned disease : </label><input type="radio" id="Yes"
									name="disease" value="Yes" onclick="showhide()"> <label for="Yes">Yes</label> <input type="radio" id="No"
									name="disease" value="No" onclick="showhide()">
								<label for="No">No</label><br>
								<b>
									<ul>

										<li>HIV</li>
										<li>Hepatitis-B</li>
										<li>Hepatitis-C</li>
										<li>Syphills</li>
										<li>Malaria</li>

									</ul>
								</b>
							</div>
							<br>

						</div>
						<div class="mt-5 ml-5 mr-5 form-group">
							<a href="/go-back?aadhar=${user.aadhar}"><button type="button" class="btn btn-info mr-auto">
								Go back</button></a>
							<button type="submit" class="btn btn-primary ml-auto" id="sub" disabled> Submit</button>
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
		<script src="js/back.js"></script>
		
		<script src="js/disable.js"></script>
		<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
			integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
			crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns"
			crossorigin="anonymous"></script>
		<script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js" data-auto-replace-svg="nest"></script>
		<script>
			$(document).ready(function () {
				$("input[name='covid']").change(function () {
					if ($(this).val() == "Yes") {
						$("#cured").show();
						
						
					} else {
						$("#cured").hide();
						$("#ques").hide();

						$("#sub").click();
						
					}
				});
				$("input[name='cured']").change(function () {
					if ($(this).val() == "Yes") {
						$("#ques").show();
						$('#text2').hide();
						
					} else {
						$("#ques").hide();
						$("#sub").click();
					}

				});

			});
		</script>
		
	</body>

	</html>