<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Instructor Login - Skill-Bazzar</title>
    <%@include file="bootStrapSupport.jsp"%>
</head>

<body>
    <div class="container">
        <h1 class="fade-in-up">👨‍🏫 Instructor Login</h1>
        <p class="text-center text-white mb-4" style="font-size: 1.2rem; text-shadow: 1px 1px 2px rgba(0,0,0,0.5);">
            Access your teaching dashboard and manage your courses
        </p>

        <%@include file="NavigationBar.jsp"%>

        <div class="row justify-content-center">
            <div class="col-lg-6 col-md-8 col-sm-12">
                <div class="main-content fade-in-up">
                    <div class="card">
                        <div class="card-header text-center">
                            <h3>🔐 Instructor Authentication</h3>
                        </div>
                        <div class="card-body">
                            <form action="InstructorLoginValidate" method="post">
                                <div class="form-group">
                                    <label for="email" class="form-label">📧 Email Address</label>
                                    <input type="email" class="form-control" id="email" name="email" 
                                           placeholder="Enter your instructor email" required>
                                </div>
                                
                                <div class="form-group">
                                    <label for="password" class="form-label">🔒 Password</label>
                                    <input type="password" class="form-control" id="password" name="password" 
                                           placeholder="Enter your password" required>
                                </div>
                                
                                <div class="form-group text-center">
                                    <button type="submit" class="btn btn-primary btn-lg">
                                        <span style="margin-right: 8px;">🚀</span>Access Instructor Dashboard
                                    </button>
                                </div>
                                
                                <div class="text-center mt-3">
                                    <p class="mb-2">Don't have an instructor account?</p>
                                    <a href="CreateAccountPage.jsp" class="btn btn-success">
                                        <span style="margin-right: 5px;">✨</span>Create Instructor Account
                                    </a>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Instructor Benefits Section -->
        <div class="row mt-5">
            <div class="col-lg-4 col-md-6 mb-4">
                <div class="card h-100">
                    <div class="card-header text-center">
                        <h4>📚 Course Management</h4>
                    </div>
                    <div class="card-body text-center">
                        <p class="card-text">Create, edit, and manage your courses with our intuitive tools.</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 mb-4">
                <div class="card h-100">
                    <div class="card-header text-center">
                        <h4>📊 Analytics Dashboard</h4>
                    </div>
                    <div class="card-body text-center">
                        <p class="card-text">Track student engagement and course performance in real-time.</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 mb-4">
                <div class="card h-100">
                    <div class="card-header text-center">
                        <h4>💰 Revenue Tracking</h4>
                    </div>
                    <div class="card-body text-center">
                        <p class="card-text">Monitor your earnings and payment status with detailed reports.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
