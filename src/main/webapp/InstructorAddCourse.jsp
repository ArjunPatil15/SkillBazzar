<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="bootStrapSupport.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <title>Instructor - Add Course</title>

    <style>
        body {
            background: linear-gradient(to right, #74ebd5, #9face6);
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
        .btn-primary {
            width: 100%;
            border-radius: 10px;
            background: linear-gradient(45deg, #007bff, #00c6ff);
            border: none;
            font-size: 1.2rem;
            font-weight: bold;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
        }
    </style>
</head>

<body>

<h1>!! Add a New Course !!</h1>

<%@include file="InstructorNavbar.jsp" %>

<main>
    <div class="container mt-4">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-header">
                        <h2>Add Course</h2>
                    </div>
                    
                    <!-- Success Message -->
                    <c:if test="${not empty sessionScope.success}">
                        <div class="alert alert-success text-center" role="alert">
                            ${sessionScope.success}
                        </div>
                        <c:remove var="success" scope="session" />
                    </c:if>

                    <!-- Error Message -->
                    <c:if test="${not empty sessionScope.error}">
                        <div class="alert alert-danger text-center" role="alert">
                            ${sessionScope.error}
                        </div>
                        <c:remove var="error" scope="session" />
                    </c:if>

                    <div class="card-body">
                        <form action="InstructorAddCourse" method="post">
                            <div class="form-group">
                                <label for="courseTitle">Course Title</label>
                                <input type="text" class="form-control" id="courseTitle"
                                       placeholder="Enter Course Title" name="title" required>
                            </div>

                            <div class="form-group">
                                <label for="courseDescription">Course Description</label>
                                <textarea class="form-control" id="courseDescription" rows="3"
                                          name="description" required></textarea>
                            </div>

                            <div class="form-group">
                                <label for="coursePrice">Course Price</label>
                                <input type="number" class="form-control" id="coursePrice"
                                       placeholder="Enter Course Price" name="price" required>
                            </div>

                            <input type="hidden" value="<%= (session.getAttribute("userId") != null) ? session.getAttribute("userId") : "" %>" name="userid" />

                            <button type="submit" class="btn btn-primary">Add Course</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>

</body>
</html>
