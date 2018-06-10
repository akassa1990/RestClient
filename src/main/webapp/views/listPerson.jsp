<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Bootstrap CSS -->

<link rel="stylesheet"
	href='<c:url value="/resources/static/css/bootstrap.min.css"/>'>


<title>List of Person</title>
</head>
<body>
	<form action="../personUpdate" method="post">

		<div class="card text-center">
			<div class="card-header">
				<div class="alert alert-primary" role="alert">
					<h1>LIST OF PERSONS</h1>
				</div>
			</div>
			<div class="card-body">
				<table border="2pt" class="table table-striped table-dark">
					<tr>
						<th>First Name</th>
						<th>Last Name</th>
						<th>Phone</th>
						<th>Email</th>
						<th>City</th>
						<th>State</th>
						<th>Country</th>
						<th>Zip Code</th>
						<!-- <th>Password</th> -->

						<th>#</a></th>
					</tr>
					<c:forEach var="person" items="${persons}">
						<tr>
							<td>${person.firstName}</td>
							<td>${person.lastName}</td>
							<td>${person.phone}</td>
							<td>${person.email}</td>
							<td>${person.address.city}</td>
							<td>${person.address.state}</td>
							<td>${person.address.country}</td>
							<td>${person.address.zipcode}</td>
							<%-- 	<td>${person.password}</td> --%>
							<td><a href="person/${person.id}">EDIT</a></td>
						</tr>
					</c:forEach>
				</table>

				<h3>
					<a href="<c:url value="/logout" />" class="badge badge-primary">
						Logout </a>
				</h3>
			</div>
			<div class="card-footer text-muted">
				<h4>WAA Course Project - June 2018</h4>
			</div>
		</div>



	</form>
	<%-- 	<form action="../person/delete?personId=${person.id}" method="post">
		<button type="submit">Delete</button>
	</form> --%>

	<script src='<c:url value="/resources/static/js/jquery-3.3.1.min.js"/>'></script>
	<script src='<c:url value="/resources/static/js/popper.min.js"/>'></script>
	<script src='<c:url value="/resources/static/js/bootstrap.min.js"/>'></script>

</body>
</html>