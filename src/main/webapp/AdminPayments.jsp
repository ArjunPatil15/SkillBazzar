<%@page import="com.ninfinity.entities.Admin"%>
<%@page import="com.ninfinity.dao.DatabaseConnect"%>
<%@page import="com.ninfinity.dao.AdminDAO"%>
<%@ page import="java.util.*, java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin - Manage Payments</title>
    <%@include file="bootStrapSupport.jsp"%>

    <style>
        body {
            background: linear-gradient(to right, #74ebd5, #9face6);
            min-height: 100vh;
            margin: 0;
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

        h2 {
            text-align: center;
            color: blue;
            font-weight: bold;
        }

        .navbar-custom {
            background-color: #0d6efd;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
        }

        .container {
            margin: 20px auto;
            background: white;
            padding: 20px;
            border-radius: 15px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
            max-width: 90%;
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

        .btn-approve, .btn-reject {
            font-weight: bold;
            padding: 8px 15px;
            border-radius: 5px;
            border: none;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
        }

        .btn-approve {
            background: linear-gradient(45deg, #28a745, #85d68a);
            color: white;
        }

        .btn-approve:hover {
            background: linear-gradient(45deg, #218838, #76c478);
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.3);
        }

        .btn-reject {
            background: linear-gradient(45deg, #dc3545, #ff7a7a);
            color: white;
        }

        .btn-reject:hover {
            background: linear-gradient(45deg, #c82333, #e86b6b);
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.3);
        }
    </style>
</head>

<body>

    <h1>Manage Payments</h1>
    <%@include file="AdminNavbar.jsp"%>

    <div class="container">
        <h2>Payment Requests</h2>
        <table class="table">
            <thead>
                <tr>
                    <th>Order ID</th>
                    <th>User ID</th>
                    <th>Course ID</th>
                    <th>Transaction ID</th>
                    <th>Payment Status</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <%
                    AdminDAO adao = new AdminDAO(DatabaseConnect.connect());
                    ArrayList<Admin> studentRequestList = adao.getAllRequest();

                    for (Admin a : studentRequestList) {
                %>
                    <tr>
                        <td><%= a.getOrderid() %></td>
                        <td><%= a.getUserid() %></td>
                        <td><%= a.getCourseid() %></td>
                        <td><%= a.getTransactionid() %></td>
                        <td><%= a.getPaymentstatus() %></td>
                        <td>
                            <form action="AdminProcessPaymentServlet" method="post" style="display:inline-block;">
                                <input type="hidden" name="orderid" value="<%= a.getOrderid() %>">
                                <input type="hidden" name="userid" value="<%= a.getUserid() %>">
                                <input type="hidden" name="courseid" value="<%= a.getCourseid() %>">
                                <input type="hidden" name="paymentstatus" value="Completed">
                                <button type="submit" class="btn btn-sm btn-approve">Approve</button>
                            </form>
                            <form action="AdminProcessPaymentServlet" method="post" style="display:inline-block;">
                                <input type="hidden" name="orderid" value="<%= a.getOrderid() %>">
                                <input type="hidden" name="userid" value="<%= a.getUserid() %>">
                                <input type="hidden" name="courseid" value="<%= a.getCourseid() %>">
                                <input type="hidden" name="paymentstatus" value="Failed">
                                <button type="submit" class="btn btn-sm btn-reject">Reject</button>
                            </form>
                        </td>
                    </tr>
                <%
                    }
                %>
            </tbody>
        </table>
    </div>

</body>
</html>
