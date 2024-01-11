<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>  
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
<script lang="javascript"> 
function search()
{ 
     var name = document.getElementById("s1").value;
     ShowDao showDao = new ShowDao(name);
}
</script>

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
	</div>
	<div style="margin-left: 50px">
		<input id="s1" type="text" name="sname" placeholder="Enter Student Name">&nbsp;&nbsp;
		<input type="button" value="Search" onclick="search">
	</div>
	<div>
		<table border="2" width="80%">  
			<tr>  
			<th>ID</th>  
			<th>Name</th>  
			<th>DOB</th> 
			<th>Course</th>
			<th>Batch</th> 
			</tr>  
			<c:forEach var="table" items="${rs.rows}">  
			<tr>  
			<td><c:out value="${table.id}"/></td>  
			<td><c:out value="${table.name}"/></td>  
			<td><c:out value="${table.dob}"/></td>  
			<td><c:out value="${table.course}"/></td>
			<td><c:out value="${table.batch}"/></td>
			</tr>  
			</c:forEach>  
	</table>
	</div>
</body>
</html>