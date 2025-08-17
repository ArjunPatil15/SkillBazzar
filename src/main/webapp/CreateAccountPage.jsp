<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Create Account - Skill-Bazzar</title>

<%@include file="bootStrapSupport.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
</head>

<body>
	<div class="container">
		<h1 class="fade-in-up">✨ Create Your Account</h1>
		<p class="text-center text-white mb-4" style="font-size: 1.2rem; text-shadow: 1px 1px 2px rgba(0,0,0,0.5);">
			Join thousands of learners and start your educational journey today
		</p>

		<%@include file="NavigationBar.jsp"%>

		<div class="row justify-content-center">
			<div class="col-lg-8 col-md-10 col-sm-12">
				<div class="main-content fade-in-up">
					<div class="card">
						<div class="card-header text-center">
							<h3>🚀 Account Registration</h3>
						</div>
						<div class="card-body">
							<form action="AddAccountController" method="post">
								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label for="username" class="form-label">👤 Username</label>
											<input type="text" class="form-control" id="username" name="username" 
												placeholder="Choose a unique username" required>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label for="email" class="form-label">📧 Email Address</label>
											<input type="email" class="form-control" id="email" name="email" 
												placeholder="Enter your email address" required>
										</div>
									</div>
								</div>

								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label for="password" class="form-label">🔒 Password</label>
											<input type="password" class="form-control" id="password" name="password" 
												placeholder="Create a strong password" required>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label for="role" class="form-label">🎯 Account Type</label>
											<select class="form-control" id="role" name="role" required>
												<option value="">Select your role</option>
												<option value="student">👨‍🎓 Student</option>
												<option value="instructor">👨‍🏫 Instructor</option>
											</select>
										</div>
									</div>
								</div>

								<div class="form-group text-center">
									<button type="submit" class="btn btn-primary btn-lg">
										<span style="margin-right: 8px;">✨</span>Create Account
									</button>
								</div>

								<div class="text-center mt-3">
									<p class="mb-2">Already have an account?</p>
									<a href="StudentLoginPage.jsp" class="btn btn-success mr-2">
										<span style="margin-right: 5px;">🔐</span>Student Login
									</a>
									<a href="InstructorLoginPage.jsp" class="btn btn-info">
										<span style="margin-right: 5px;">👨‍🏫</span>Instructor Login
									</a>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Benefits Section -->
		<div class="row mt-5">
			<div class="col-lg-4 col-md-6 mb-4">
				<div class="card h-100">
					<div class="card-header text-center">
						<h4>🎓 Learn Anywhere</h4>
					</div>
					<div class="card-body text-center">
						<p class="card-text">Access your courses from any device, anytime, anywhere in the world.</p>
					</div>
				</div>
			</div>
			<div class="col-lg-4 col-md-6 mb-4">
				<div class="card h-100">
					<div class="card-header text-center">
						<h4>📈 Track Progress</h4>
					</div>
					<div class="card-body text-center">
						<p class="card-text">Monitor your learning journey with detailed progress tracking and analytics.</p>
					</div>
				</div>
			</div>
			<div class="col-lg-4 col-md-6 mb-4">
				<div class="card h-100">
					<div class="card-header text-center">
						<h4>🏆 Earn Certificates</h4>
					</div>
					<div class="card-body text-center">
						<p class="card-text">Get recognized for your achievements with professional certificates.</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
