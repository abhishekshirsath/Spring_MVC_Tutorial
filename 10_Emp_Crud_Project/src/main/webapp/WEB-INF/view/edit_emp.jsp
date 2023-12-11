<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Employee</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-primary"> <a
		class="navbar-brand" href="#">Emp Management System</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href="home">Home
					<span class="sr-only"></span>
			</a></li>
			<li class="nav-item"><a class="nav-link" href="addEmp">Add
					Emp</a></li>
		</ul>
	</div>
	</nav>

	<div class="container">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-header text-center">
						<h3>Edit Emp</h3>
						<c:if test="${not empty msg }">
							<h5>${msg}</h5>
							<c:remove var="msg"/>
						</c:if>
					</div>
					<div class="card-body">
						<form action="${pageContext.request.contextPath}/updateEmp" method="post">
							<input type="hidden" name = "id" value="${emp.id }">
							<div class="mb-3">
								<label>Enter Full Name</label> <input type="text"
									name="fullName" class="form-control" value="${emp.fullName}">
							</div>

							<div class="mb-3">
								<label>Enter Address</label> <input type="text" name="address"
									class="form-control" value="${emp.address}">
							</div>

							<div class="mb-3">
								<label>Enter Email</label> <input type="text" name="email"
									class="form-control" value="${emp.email}">
							</div>

							<div class="mb-3">
								<label>Enter password</label> <input type="text" name="password"
									class="form-control" value="${emp.password}">
							</div>

							<div class="mb-3">
								<label>Enter Designation</label> <input type="text"
									name="designation" class="form-control" value="${emp.designation}">
							</div>

							<div class="mb-3">
								<label>Enter Salary</label> <input type="text" name="salary"
									class="form-control" value="${emp.salary}">
							</div>

							<button class="btn btn-primary">Update</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>





</body>
</html>