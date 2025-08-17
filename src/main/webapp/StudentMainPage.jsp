<%@page import="java.io.PrintWriter"%>
<%@ page import="javax.servlet.http.HttpSession" %>
<%@page import="com.ninfinity.dao.CourseDAO"%>
<%@page import="com.ninfinity.dao.DatabaseConnect"%>
<%@page import="com.ninfinity.entities.Course"%>
<%@page import="java.util.ArrayList"%>
<%@ page session="true" %>
<%
    // Get the existing session
    if (session == null || session.getAttribute("userid") == null) {
        response.sendRedirect("StudentLoginPage.jsp");  // Redirect to login page if not logged in
    } else {
        int userId = (Integer) session.getAttribute("userid");
       
    }

// Fetch all courses with instructor details
CourseDAO courseDAO = new CourseDAO(DatabaseConnect.connect());
ArrayList<Course> courseList = courseDAO.getAllCoursesWithInstructor();
%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<%@include file="bootStrapSupport.jsp" %>
<html>
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Dashboard - Skill-Bazzar</title>
</head>

<body>
<% 
    // Retrieve the loginName from the session
    String username = (String) session.getAttribute("loginName");
    if (username == null) {
        username = "Student"; // Fallback if not logged in
    }
%>

<div class="container">
    <h1 class="fade-in-up">👨‍🎓 Welcome, <%= username %>!</h1>
    <p class="text-center text-white mb-4" style="font-size: 1.2rem; text-shadow: 1px 1px 2px rgba(0,0,0,0.5);">
        Explore our course catalog and continue your learning journey
    </p>

    <%@include file="StudentNavbar.jsp"%>

    <!-- Welcome Section -->
    <div class="main-content fade-in-up">
        <div class="row">
            <div class="col-lg-8">
                <h3>🎯 Available Courses</h3>
                <p class="text-muted">Discover high-quality courses from expert instructors</p>
            </div>
            <div class="col-lg-4 text-right">
                <a href="mycourses.jsp" class="btn btn-info">
                    <span style="margin-right: 5px;">📚</span>My Courses
                </a>
            </div>
        </div>
    </div>

    <!-- Course Grid -->
    <div class="row">
        <% for(Course course : courseList) { %>
            <div class="col-lg-4 col-md-6 mb-4">
                <div class="card course-card h-100">
                    <div class="card-header text-center">
                        <h5 class="mb-0">📚 <%= course.getCourse_name() %></h5>
                    </div>
                    <div class="card-body">
                        <p class="card-text text-muted mb-3">
                            <%= course.getDescription() != null ? course.getDescription() : "Comprehensive course content" %>
                        </p>
                        <div class="row text-center">
                            <div class="col-6">
                                <small class="text-muted">👨‍🏫 Instructor</small>
                                <p class="mb-0 font-weight-bold"><%= course.getInstructorName() != null ? course.getInstructorName() : "Expert Instructor" %></p>
                            </div>
                            <div class="col-6">
                                <small class="text-muted">💰 Price</small>
                                <p class="mb-0 font-weight-bold text-success">₹<%= course.getPrice() %></p>
                            </div>
                        </div>
                        <div class="row text-center mt-2">
                            <div class="col-6">
                                <small class="text-muted">📊 Sales</small>
                                <p class="mb-0 font-weight-bold text-info"><%= course.getSalescount() %></p>
                            </div>
                            <div class="col-6">
                                <small class="text-muted">🎯 Course ID</small>
                                <p class="mb-0 font-weight-bold text-primary"><%= course.getCourseid() %></p>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer text-center">
                        <a href="Purchase.jsp?courseId=<%= course.getCourseid() %>" class="btn btn-primary btn-sm">
                            <span style="margin-right: 5px;">🛒</span>Purchase Course
                        </a>
                    </div>
                </div>
            </div>
        <% } %>
    </div>

    <!-- Quick Actions -->
    <div class="row mt-5">
        <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
                <div class="card-header text-center">
                    <h4>📚 Browse Courses</h4>
                </div>
                <div class="card-body text-center">
                    <p class="card-text">Explore our extensive collection of courses across various subjects.</p>
                    <a href="#" class="btn btn-outline-primary">Browse Now</a>
                </div>
            </div>
        </div>
        <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
                <div class="card-header text-center">
                    <h4>🎯 Learning Path</h4>
                </div>
                <div class="card-body text-center">
                    <p class="card-text">Follow structured learning paths to achieve your educational goals.</p>
                    <a href="#" class="btn btn-outline-success">View Paths</a>
                </div>
            </div>
        </div>
        <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
                <div class="card-header text-center">
                    <h4>🏆 Achievements</h4>
                </div>
                <div class="card-body text-center">
                    <p class="card-text">Track your progress and earn certificates for completed courses.</p>
                    <a href="#" class="btn btn-outline-warning">View Progress</a>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
