<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login - Skill-Bazzar</title>
    <%@include file="bootStrapSupport.jsp"%>
</head>

<body>
    <div class="container">
        <h1 class="fade-in-up">⚙️ Admin Login</h1>
        <p class="text-center text-white mb-4" style="font-size: 1.2rem; text-shadow: 1px 1px 2px rgba(0,0,0,0.5);">
            Access administrative controls and platform management
        </p>

        <%@include file="NavigationBar.jsp"%>

        <div class="row justify-content-center">
            <div class="col-lg-6 col-md-8 col-sm-12">
                <div class="main-content fade-in-up">
                    <div class="card">
                        <div class="card-header text-center">
                            <h3>🔐 Administrative Access</h3>
                        </div>
                        <div class="card-body">
                            <form action="AdminLoginValidate" method="post">
                                <div class="form-group">
                                    <label for="email" class="form-label">📧 Admin Email</label>
                                    <input type="email" class="form-control" id="email" name="email" 
                                           placeholder="Enter admin email address" required>
                                </div>
                                
                                <div class="form-group">
                                    <label for="password" class="form-label">🔒 Admin Password</label>
                                    <input type="password" class="form-control" id="password" name="password" 
                                           placeholder="Enter admin password" required>
                                </div>
                                
                                <div class="form-group text-center">
                                    <button type="submit" class="btn btn-primary btn-lg">
                                        <span style="margin-right: 8px;">🚀</span>Access Admin Panel
                                    </button>
                                </div>
                                
                                <div class="text-center mt-3">
                                    <p class="mb-2">Need help with admin access?</p>
                                    <a href="index.jsp" class="btn btn-info">
                                        <span style="margin-right: 5px;">🏠</span>Return to Home
                                    </a>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Admin Features Section -->
        <div class="row mt-5">
            <div class="col-lg-4 col-md-6 mb-4">
                <div class="card h-100">
                    <div class="card-header text-center">
                        <h4>👥 User Management</h4>
                    </div>
                    <div class="card-body text-center">
                        <p class="card-text">Manage student and instructor accounts with comprehensive controls.</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 mb-4">
                <div class="card h-100">
                    <div class="card-header text-center">
                        <h4>📊 Platform Analytics</h4>
                    </div>
                    <div class="card-body text-center">
                        <p class="card-text">Monitor platform performance and user engagement metrics.</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 mb-4">
                <div class="card h-100">
                    <div class="card-header text-center">
                        <h4>💰 Financial Oversight</h4>
                    </div>
                    <div class="card-body text-center">
                        <p class="card-text">Track transactions and manage platform revenue streams.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
