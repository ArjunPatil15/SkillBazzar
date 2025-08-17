<%@page import="com.ninfinity.entities.Course"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Admin Main Page</title>

<%@include file="bootStrapSupport.jsp"%>

<style>
body {
	background: linear-gradient(to right, #74ebd5, #9face6);
	/* Gradient background */
	min-height: 100vh;
	display: flex;
	flex-direction: column;
}

h1 {
	color: white;
	text-align: center;
	margin-top: 20px;
	font-weight: bold;
	font-size: 2.5rem;
	text-shadow: 2px 2px #000;
}

.navbar {
	background-color: #007bff;
	box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
}

.card {
	border-radius: 15px;
	background-color: white;
	box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
	padding: 20px;
}

.card-header {
	background-color: #343a40;
	color: white;
	text-align: center;
	border-radius: 15px 15px 0 0;
	padding: 15px 0;
}

.form-control {
	border-radius: 10px;
}

.btn-primary {
	width: 100%;
	border-radius: 10px;
	background: linear-gradient(45deg, #007bff, #00c6ff);
	border: none;
	font-size: 1.2rem;
	font-weight: bold;
	box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
}

.btn-primary:hover {
	background: linear-gradient(45deg, #0056b3, #00aaff);
	box-shadow: 0 6px 12px rgba(0, 0, 0, 0.3);
}

.form-group label {
	font-weight: bold;
	color: #333;
}
</style>
</head>

<body>
	<h1>SkillBazaar</h1>


	<!-- Including the Admin Navigation Bar -->
	<%@include file="AdminNavbar.jsp"%>

	<!-- Carousel Section -->
	<div class="container my-4 carousel-container">
		<div id="imageCarousel" class="carousel slide" data-ride="carousel"
			data-interval="2000">
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img
						src="https://i.ytimg.com/vi/Wx0SJa8L4dA/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLBTtAm9b620BcU71XBI2vyMJDWqjA"
						class="d-block w-100" alt="Image 1">
				</div>
				<div class="carousel-item">
					<img src="https://www.ninfinitysolutions.com/assets/img/cover.png"
						class="d-block w-100" alt="Image 2">
				</div>
				<div class="carousel-item">
					<img
						src="https://i.ytimg.com/vi/k1qUIj2mi3Q/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLDYeP9nhsMVFSstK-wEF1G1-xO_uA"
						class="d-block w-100" alt="Image 3">
				</div>
				<div class="carousel-item">
					<img
						src="https://i.ytimg.com/vi/ZVTLndiTWQ8/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLBKHH3rqMkEmN9J0JeAhFPl8brgMQ"
						class="d-block w-100" alt="Image 4">
				</div>
			</div>

			<a class="carousel-control-prev" href="#imageCarousel" role="button"
				data-slide="prev"> <span class="carousel-control-prev-icon"
				aria-hidden="true"></span> <span class="sr-only">Previous</span>
			</a> <a class="carousel-control-next" href="#imageCarousel" role="button"
				data-slide="next"> <span class="carousel-control-next-icon"
				aria-hidden="true"></span> <span class="sr-only">Next</span>
			</a>
		</div>
	</div>
	<!-- Courses Section -->
	<div class="container my-4">
		<h2 style="text-align: center; color: white;">Available Courses</h2>
		<hr>
		<div class="row">
			<!-- Course 1 -->
			<div class="col-md-4">
				<div class="card course-card">
					<img src="https://www.ninfinitysolutions.com/assets/img/cover.png"
						class="card-img-top" alt="Course 1">
					<div class="card-body">
						<h5 class="card-title">TechniHongo</h5>
						<p class="card-text">Master JPTL With Java FullStack /
							Datascience For Today's IT LandScape</p>
						<a href="#" class="btn btn-primary">Enroll Now</a>
					</div>
				</div>
			</div>

			<!-- Course 2 -->
			<div class="col-md-4">
				<div class="card course-card">
					<img
						src="https://i.ytimg.com/vi/k1qUIj2mi3Q/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLDYeP9nhsMVFSstK-wEF1G1-xO_uA"
						class="card-img-top" alt="Course 2">
					<div class="card-body">
						<h5 class="card-title">Fundamentals Of Programming Language</h5>
						<p class="card-text">Based On SPPU 2024 Pattern</p>
						<a href="#" class="btn btn-primary">Enroll Now</a>
					</div>
				</div>
			</div>

			<!-- Course 3 -->
			<div class="col-md-4">
				<div class="card course-card">
					<img
						src="https://i.ytimg.com/vi/ZVTLndiTWQ8/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLBKHH3rqMkEmN9J0JeAhFPl8brgMQ"
						class="card-img-top" alt="Course 3">
					<div class="card-body">
						<h5 class="card-title">Theory Of Computation</h5>
						<p class="card-text">Based On SPPU 2019 Pattern/Live Doubt
							Solving</p>
						<a href="#" class="btn btn-primary">Enroll Now</a>
					</div>
				</div>
			</div>
		</div>
	</div>



</body>
</html>
