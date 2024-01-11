<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</head>
<body>
	<div class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="container-fluid">
			<p class="navbar-brand text-warning">ID Generator</p>
			<button class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#MyNavbar">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div id="MyNavbar" class="collapse navbar-collapse">
				<ul class="navbar-nav">
					<li class="nav-item"><a href="home.jsp" class="nav-link active">Home</a></li>
				</ul>
			</div>
		</div>
	</div>
	<%
	String uname=(String)session.getAttribute("uname");  
	%>
	<div>
		<p style="text-align:right; margin-right: 20px"><%=uname%></p>
		<p style="text-align: right; margin-right: 20px"><a href="#">Logout</a></p>
			<blockquote style="margin-left: 20px">
				<abbr title="Show the Details of Students"><a href="show.jsp">show Info</a><br><br></abbr>
				<abbr title="Add the Details of Students"><a href="add.jsp">Add Info</a><br><br></abbr>
				<abbr title="Update the Details of Students"><a href="update.jsp">Update Info</a><br><br></abbr>
				<abbr title="Delete the Details of Students"><a href="delete.jsp">Delete Info</a></abbr>
			</blockquote>
	</div>
</body>
</html>