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
						<h4 class="text-center text-primary">Add Student</h4>

						<form action="register" method="post">

							<div class="form-group">
								<label>First Name</label> 
								<input type="text" class="form-control" name="fname">
							</div>
							
							<div class="form-group">
								<label>Last Name</label> 
								<input type="text" class="form-control" name="lname">
							</div>
							
			
							<div class="form-group">
								<label>Email</label> 
								<input type="email" class="form-control" name="email">
							</div>

							<div class="form-group">
								<label>Address</label> 
								<input type="text" class="form-control" name="address">
							</div>


							<div class="form-group">
								<label>Phone Number</label> 
									<input type="text" class="form-control" name="phone">
							</div>

							
							<label>Gender</label>
	
								<div class="form-check form-check-inline">
								   <input class="form-check-input" type="radio"  id="1" name="gender" value="Male">
								  <label class="form-check-label" for="1">Male</label>
								</div>
								<div class="form-check form-check-inline">
								   <input class="form-check-input" type="radio"  id="2" name="gender" value="Female">
								  <label class="form-check-label" for="2">Female</label>
								</div>

					
							<br>
							<br>
							<div class="form-group">
								<label>Class Enrolled</label> 
								<input type="text" class="form-control" name="classenroll">
							</div>



							<button class="btn btn-primary btn-block">Submit</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>