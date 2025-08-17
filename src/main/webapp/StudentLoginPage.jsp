<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Login - Skill-Bazzar</title>
    <%@include file="bootStrapSupport.jsp"%>
</head>

<body>
    <div class="container">
        <h1 class="fade-in-up">👨‍🎓 Student Login</h1>
        <p class="text-center text-white mb-4" style="font-size: 1.2rem; text-shadow: 1px 1px 2px rgba(0,0,0,0.5);">
            Access your learning dashboard and continue your educational journey
        </p>

        <%@include file="NavigationBar.jsp"%>

        <div class="row justify-content-center">
            <div class="col-lg-6 col-md-8 col-sm-12">
                <div class="main-content fade-in-up">
                    <div class="card">
                        <div class="card-header text-center">
                            <h3>🔐 Student Authentication</h3>
                        </div>
                        <div class="card-body">
                            <form action="StudentLoginValidate" method="post">
                                <div class="form-group">
                                    <label for="email" class="form-label">📧 Email Address</label>
                                    <input type="email" class="form-control" id="email" name="email" 
                                           placeholder="Enter your email address" required>
                                </div>
                                
                                <div class="form-group">
                                    <label for="password" class="form-label">🔒 Password</label>
                                    <input type="password" class="form-control" id="password" name="password" 
                                           placeholder="Enter your password" required>
                                </div>
                                
                                <div class="form-group text-center">
                                    <button type="submit" class="btn btn-primary btn-lg">
                                        <span style="margin-right: 8px;">🚀</span>Login to Dashboard
                                    </button>
                                </div>
                                
                                <div class="text-center mt-3">
                                    <p class="mb-2">Don't have an account?</p>
                                    <a href="CreateAccountPage.jsp" class="btn btn-success">
                                        <span style="margin-right: 5px;">✨</span>Create New Account
                                    </a>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Additional Info Section -->
        <div class="row mt-5">
            <div class="col-lg-4 col-md-6 mb-4">
                <div class="card h-100">
                    <div class="card-header text-center">
                        <h4>📚 Access Courses</h4>
                    </div>
                    <div class="card-body text-center">
                        <p class="card-text">Browse and enroll in high-quality courses from expert instructors.</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 mb-4">
                <div class="card h-100">
                    <div class="card-header text-center">
                        <h4>🎯 Track Progress</h4>
                    </div>
                    <div class="card-body text-center">
                        <p class="card-text">Monitor your learning progress and achievements in real-time.</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 mb-4">
                <div class="card h-100">
                    <div class="card-header text-center">
                        <h4>💬 Get Support</h4>
                    </div>
                    <div class="card-body text-center">
                        <p class="card-text">Connect with instructors and fellow students for support.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
