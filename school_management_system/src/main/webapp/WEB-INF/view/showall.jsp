<%@page import="com.school.management.application.service.impl.StuentServiceImpl"%>
<%@page import="com.school.management.application.bean.Student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "sql" uri = "http://java.sun.com/jsp/jstl/sql" %>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <%@page import="java.util.ArrayList"%>
	<%@page import="java.util.List"%>

<!DOCTYPE html>

<%@ include file="bootstraptag.jsp" %>
<html>
<head>


<title>All Students</title>
</head>
<body>
<%@ include file="navbar.jsp" %>



	<%-- <h3> My name is ${students}</h3> --%>

	
	<div class="container p-3">
		
		<div class="card">
			<div class="card-body"> 
				<h2 class="text-center fs-1"> Student Details </h2>
				<table class="table border">
					<thead class="thead-dark">
						<tr>
							<th scope="col">Id</th>
							<th scope="col">First Name</th>
							<th scope="col">Last Name</th>
							<th scope="col">Email</th>
							<th scope="col">Address</th>						
							<th scope="col">Phone Number</th>
							<th scope="col">Gender</th>
							<th scope="col">Class Enrolled</th>						
							<th scope="col">Edit Details</th>
							<th scope="col">Delete Student</th>
							
							
						</tr>
					</thead>
					
					 
						<c:forEach var="student" items="${students}">
						<tbody>
								<tr>
									<td>${student.id}</td>
									<td>${student.firstName}</td>
									<td>${student.lastName}</td>									
									<td>${student.email}</td>
									<td>${student.address}</td>
									<td>${student.contact}</td>
									<td>${student.gender}</td>
									<td>${student.classenrolled}</td>
									
									
									
									<td><a class="btn btn-primary" href="/EditDetails?id=${student.id}"   role="button"> Edit </a></td>
		       						<td><a class="btn btn-primary" href="/deleteStudent?id=${student.id}" role="button"> Delete </a></td>
									
								</tr>
						</tbody>
						</c:forEach> 
					
					
				 

											
				</table>
			</div>
		</div>
	</div>
  



</body>
</html>