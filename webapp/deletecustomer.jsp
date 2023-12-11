<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	 <link rel="stylesheet" type="text/css" href="updatecustomerCSS.css">
	<title>User Profile Delete</title>
	

</head>
<body>

	<%
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String userName = request.getParameter("uname");
		String password = request.getParameter("pass");
	%>

	<div class="card">
       
       <h2>User Profile</h2>
        <img class="profile-image" src="users.png" alt="Profile Image">
	

	<form action="tdelete" method="post">
	<table>
		<tr>
			<td>Customer ID</td>
			<td><input type="text" name="cusid" value="<%=id%>" readonly></td>
		</tr>
		<tr>
			<td>Name</td>
			<td><input type="text" name="name" value="<%=name%>" readonly></td>
		</tr>
		<tr>
		<td>Email</td>
		<td><input type="text" name="email" value="<%=email%>" readonly></td>
	</tr>
	<tr>
		<td>Phone number</td>
		<td><input type="text" name="phone" value="<%=phone%>" readonly></td>
	</tr>
	<tr>
		<td>User name</td>
		<td><input type="text" name="uname" value="<%=userName%>" readonly></td>
	</tr>
	<tr>
		<td>Password</td>
		<td><input type="password" name="pass" value="<%=password%>" readonly></td>
	</tr>		
	</table>
	<br>
	<input type="submit" name="submit"  class="profile-card-button" value="Delete My Account" readonly>
	</form>
	
	</div>

</body>
</html>