<%@page import="com.ninfinity.entities.Admin"%>
<%@page import="com.ninfinity.dao.DatabaseConnect"%>
<%@page import="com.ninfinity.dao.AdminDAO"%>
<%@ page import="java.util.*, java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Admin - Manage Payments</title>
<%@include file="bootStrapSupport.jsp"%>

<style>
body {
	background: linear-gradient(to right, #74ebd5, #9face6);
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

.container-custom {
	margin: 20px auto;
	background: white;
	padding: 20px;
	border-radius: 15px;
	box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
	width: 95%; /* changed from max-width: 85% */
}

table {
    width: 100%;       /* take full container width */
    margin-top: 20px;
    border-radius: 10px;
    overflow: hidden;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
    font-size: 1.1rem; /* make text slightly bigger */
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

.btn-approve {
	background: linear-gradient(45deg, #198754, #28a745);
	color: white;
	border-radius: 5px;
	padding: 6px 12px;
	font-weight: bold;
	text-decoration: none;
	box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
	border: none;
}

.btn-approve:hover {
	background: linear-gradient(45deg, #0f5132, #218838);
	box-shadow: 0 6px 12px rgba(0, 0, 0, 0.3);
}

.btn-reject {
	background: linear-gradient(45deg, #ff4b5c, #ff7a7a);
	color: white;
	border-radius: 5px;
	padding: 6px 12px;
	font-weight: bold;
	text-decoration: none;
	box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
	border: none;
}

.btn-reject:hover {
	background: linear-gradient(45deg, darkred, #e63946);
	box-shadow: 0 6px 12px rgba(0, 0, 0, 0.3);
}
</style>
</head>

<body>

	<h1>Manage Payments</h1>

	<!-- Navbar -->
	<%@include file="AdminNavbar.jsp"%>

	<!-- Table Section -->
	<div class="container-custom">
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
						<!-- Approve Button -->
						<form action="AdminProcessPaymentServlet" method="post"
							class="d-inline">
							<input type="hidden" name="orderid" value="<%= a.getOrderid() %>">
							<input type="hidden" name="userid" value="<%= a.getUserid() %>">
							<input type="hidden" name="courseid"
								value="<%= a.getCourseid() %>"> <input type="hidden"
								name="paymentstatus" value="Completed">
							<button type="submit" class="btn btn-sm btn-approve">Approve</button>
						</form> <!-- Reject Button -->
						<form action="AdminProcessPaymentServlet" method="post"
							class="d-inline">
							<input type="hidden" name="orderid" value="<%= a.getOrderid() %>">
							<input type="hidden" name="userid" value="<%= a.getUserid() %>">
							<input type="hidden" name="courseid"
								value="<%= a.getCourseid() %>"> <input type="hidden"
								name="paymentstatus" value="Failed">
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
