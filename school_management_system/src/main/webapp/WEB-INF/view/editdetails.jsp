<%@page import="java.io.PrintWriter"%>
<%@page import="com.school.management.application.bean.Student"%>
<%@page import="com.school.management.application.service.impl.StuentServiceImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!doctype html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<%@ include file="bootstraptag.jsp" %>

<title>Home page</title>
</head>
<body>
	<%@ include file="navbar.jsp" %>
	<!-- Navbar -->
	<br>
	

	
	<div class="container">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-body">
						<h4 class="text-center text-primary">Update Student</h4>


						<form action="updateStudent" method= "get">

							<div class="form-group">
								<label>First Name</label> 
								<input type="text" class="form-control" value="${student.getFirstName()}" name="fname">
							</div>
							
							<div class="form-group">
								<label>Last Name</label> 
								<input type="text" class="form-control" value="${student.getLastName()}" name="lname">
							</div>
							
			
							<div class="form-group">
								<label>Email</label> 
								<input type="email" class="form-control" value="${student.getEmail()}" name="email">
							</div>

							<div class="form-group">
								<label>Address</label> 
								<input type="text" class="form-control" value="${student.getAddress()}" name="address">
							</div>


							<div class="form-group">
								<label>Phone Number</label> 
									<input type="text" class="form-control" value="${student.getContact()}" name="phone">
							</div>

		<%
 					String genderType =  request.getAttribute("GenderType").toString();			
					if(genderType.equals("Male")){
									
		%>
							
							<div class="form-group">
							<label>Gender</label>
								<div class="form-check form-check-inline">
								   <input class="form-check-input" type="radio"  id="1" name="gender" value="Male" checked>
								  <label class="form-check-label" for="1">Male</label>
								</div>
								<div class="form-check form-check-inline">
								   <input class="form-check-input" type="radio"  id="2" name="gender" value="Female" >
								  <label class="form-check-label" for="2">Female</label>
								</div>
							</div>
	
	<%}else if(genderType.equals("Female")){ %>	
	
								<div class="form-group">
							<label>Gender</label>
								<div class="form-check form-check-inline">
								   <input class="form-check-input" type="radio"  id="1" name="gender" value="Male" >
								  <label class="form-check-label" for="1">Male</label>
								</div>
								<div class="form-check form-check-inline">
								   <input class="form-check-input" type="radio"  id="2" name="gender" value="Female" checked>
								  <label class="form-check-label" for="2">Female</label>
								</div>
							</div>
	
	<%} %>				
							<div class="form-group">
								<label>Class Enrolled</label> 
								<input type="text" class="form-control" value="${student.getClassenrolled()}" name="classenroll">
							</div>

							<input type="hidden" class="form-control" value="${student.getId()}" name="id">
						

							<button class="btn btn-primary btn-block">Update</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>