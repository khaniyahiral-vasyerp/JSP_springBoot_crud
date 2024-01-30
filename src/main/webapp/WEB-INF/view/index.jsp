<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student details page</title>

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>

</head>
<body>
	<h1 class="mx-auto p-2 fs-1" style="width: 500px;">Student Details
	</h1>

	<table class="table table-striped table-bordered">
		<thead class="table-dark">
			<tr>

				<th scope="row">id</th>
				<th>Name</th>
				<th>Email</th>
				<th>Phone no</th>
				<th>Department</th>
				<th>City</th>
				<th>State</th>
				<th>College Name</th>
				<th>View profile</th>
				<th>Edit</th>
				<th>Delete</th>

			</tr>

		</thead>

		<tr>
			<c:forEach items="${students}" var="student">
				<td scope="row">${student.id}</td>
				<td>${student.name}</td>
				<td>${student.email}</td>
				<td>${student.phoneno}</td>
				<td>${student.department}</td>
				<td>${student.city}</td>
				<td>${student.state}</td>
				<td>${student.college_name}</td>
				<td><form action="/student/get" method="get">
							<input type="hidden" name="id" value="${student.id}">
							<button class="btn btn-success">Profile</button>
						</form></td>
				
				<td><form action="/student/updateForm" method="post">
						<input type="hidden" name="id" value="${student.id }">
						<button class="btn btn-primary">Update</button>
					</form></td>
				<td><form action="/student/delete" method="post">
						<input type="hidden" name="id" value="${student.id}">
						<button class="btn btn-danger">Delete</button>
					</form></td>
		</tr>
		</c:forEach>


		<!--  tbody>
    <tr>
      <th scope="row">1</th>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Jacob</td>
      <td>Thornton</td>
      <td>@fat</td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td>Larry</td>
      <td>the Bird</td>
      <td>@twitter</td>
    </tr>
  </tbody-->
	</table>

	<!--  table border="3">
				<tr>
   			</table-->
	<center>
		<form action="/student/addForm" method="post">
			<button class="btn btn-primary">Add</button>
		</form>
	</center>
</body>
</html>