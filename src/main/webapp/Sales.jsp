<%@page import="com.ninfinity.entities.Course"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <title>Admin Sales Report</title>
    <%@include file="bootStrapSupport.jsp"%>

    <style>
        body {
            background: linear-gradient(to right, #74ebd5, #9face6); /* Gradient background */
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            margin: 0;
        }

        h1 {
            color: white;
            text-align: center;
            margin-top: 20px;
            font-weight: bold;
            font-size: 2.5rem;
            text-shadow: 2px 2px #000;
        }

        h2 {
            text-align: center;
            color: blue;
            font-weight: bold;
        }

        .container {
            margin: 20px auto;
            background: white;
            padding: 20px;
            border-radius: 15px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
            max-width: 80%;
        }

        table {
            width: 100%;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
            margin-top: 20px;
        }

        thead {
            background-color: black;
            color: white;
        }

        th, td {
            text-align: center;
            padding: 12px;
            font-size: 1rem;
            border-bottom: 1px solid #ddd;
        }

        tbody tr:hover {
            background-color: #f2f2f2;
        }
    </style>
</head>

<body>
    <h1>SkillBazaar</h1>

    <!-- Including the Admin Navigation Bar -->
    <%@include file="AdminNavbar.jsp"%>

    <%@page import="com.ninfinity.dao.CourseDAO"%>
    <%@page import="com.ninfinity.dao.DatabaseConnect"%>
    <%@page import="java.util.List"%>

    <%
        // Fetch course sales data from the DAO
        CourseDAO courseDAO = new CourseDAO(DatabaseConnect.connect());
        List<Course> courseSalesList = courseDAO.getCourseSalesDetails();
    %>

    <div class="container">
        <h2>Course Sales Report</h2>

        <table class="table">
            <thead>
                <tr>
                    <th>Course Title</th>
                    <th>Description</th>
                    <th>Price (INR)</th>
                    <th>Instructor Name</th>
                    <th>Sales Count</th>
                </tr>
            </thead>
            <tbody>
                <%
                    if (courseSalesList != null && !courseSalesList.isEmpty()) {
                        for (Course data : courseSalesList) {
                %>
                <tr>
                    <td><%= data.getCourse_name() %></td>
                    <td><%= data.getDescription() %></td>
                    <td><%= data.getPrice() %></td>
                    <td><%= data.getInstructorName() %></td>
                    <td><%= data.getSalescount() %></td>
                </tr>
                <%
                        }
                    } else {
                %>
                <tr>
                    <td colspan="5" class="text-center">No course sales found.</td>
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>
    </div>

</body>
</html>
