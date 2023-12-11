<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<title>User account</title>

<link rel="stylesheet" type="text/css" href="useraccountCSSs.css">

</head>
<body>
	<!-- Header -->
<table class="topnav" style="width:100%; border:1px solid;">
		<tr>
			<td>
				<img src="Images/logo.jpg" alt="LOGO" width="210px" height="50px">
			</td>
		</tr>
	</table>

	<div class="navbar">
		<a href="homepage.html">Home</a>
		<form action="customerview" method="post">
			<div class="dropdown">
				<button class="dropbtn">User Information</button>
			</div>
		</form>
		<div class="dropdown">
			<button class="dropbtn">
				Transactions <i class="fa fa-caret-down"></i>
			</button>
			<div class="dropdown-content">
				<form action="selects" method="post">

					<button type="submit" class="transfbtn">View Transfer</button>
				</form>
				<a href="FundTransfer.jsp">Fund Transfer</a>
			</div>
		</div>
		<div class="dropdown">
			<button class="dropbtn">
				Bank Card <i class="fa fa-caret-down"></i>
			</button>
			<div class="dropdown-content">
				<form action="CardCheck" method="post">

					<button type="submit" class="transfbtn">Request a Bank card</button>
				</form>
				<form action="updateCardCheck" method="post">

					<button type="submit" class="transfbtn">Update the expire card</button>
				</form>
				<form action="deleteCardCheck" method="post">

					<button type="submit" class="transfbtn">Cancel the card</button>
				</form>				
			</div>
		</div>
		<a href=" ">Bank Accounts</a>
		<form action="logout" method="post">
			<div class="dropdown">
				<button class="dropbtn">Log out</button>
			</div>
		</form>
	</div>
<!-- Content -->

	<div class="container">
		<div class="left-side">
			<h2>User Information</h2>

			<table>
				<c:forEach var="cus" items="${cusDetails}">

					<c:set var="id" value="${cus.id}" />
					<c:set var="name" value="${cus.name}" />
					<c:set var="email" value="${cus.email}" />
					<c:set var="phone" value="${cus.phone}" />
					<c:set var="username" value="${cus.userName}" />
					<c:set var="password" value="${cus.password}" />
					<tr>
						<td>Customer ID</td>
						<td>${cus.id}</td>
					</tr>
					<tr>
						<td>Name</td>
						<td>${cus.name}</td>
					</tr>
					<tr>
						<td>Email</td>
						<td>${cus.email}</td>
					</tr>
					<tr>
						<td>Phone</td>
						<td>${cus.phone}</td>
					</tr>
					<tr>
						<td>User name</td>
						<td>${cus.userName}</td>
					</tr>
				</c:forEach>
			</table>



		</div>
		<div class="right-side">
			<div class="profile-card">
				<!-- Profile Card Content -->
				<img src="users.png" alt="User Name" width="100" height="100">
				<c:forEach var="cus" items="${cusDetails}">
					<h2>${cus.name}</h2>
				</c:forEach>

				<!-- Buttons -->

				<c:url value="updatecustomer.jsp" var="cusupdate">
					<c:param name="id" value="${id}" />
					<c:param name="name" value="${name}" />
					<c:param name="email" value="${email}" />
					<c:param name="phone" value="${phone}" />
					<c:param name="uname" value="${username}" />
					<c:param name="pass" value="${password}" />
				</c:url>

				<a href="${cusupdate}" class="profile-card-button" name="update"
					value="Update My Data">Update</a>

				<c:url value="deletecustomer.jsp" var="cusdelete">
					<c:param name="id" value="${id}" />
					<c:param name="name" value="${name}" />
					<c:param name="email" value="${email}" />
					<c:param name="phone" value="${phone}" />
					<c:param name="uname" value="${username}" />
					<c:param name="pass" value="${password}" />
				</c:url>
				<a href="${cusdelete}" class="profile-card-button" name="delete"
					value="Delete My Account">Delete</a>


			</div>
			<c:url value="support.jsp" var="cusupdate">

				<c:param name="name" value="${name}" />
				<c:param name="email" value="${email}" />
				<c:param name="uname" value="${username}" />

			</c:url>

			<a href="${cusupdate}" class="profile-card-button" name="update"
				value="Update My Data"> Support</a> <br>



		</div>
	</div>

	<!-- Footer -->

	<table class="footernav" style="width: 100%;">
		<tr>
			<td style="width: 15%;">
				<p
					style="font-size: 18px; font-family: Arial; font-weight: bold; color: #6699ff;">ABC
					Bank</p>
				<p style="font-size: 12px; font-family: Arial; color: white;">Online
					banking offers customers the freedom to access their accounts and
					perform various financial activities anytime, anywhere if they have
					an internet connection. This accessibility has eliminated the
					constraints of physical branch visits and banking hours, making it
					possible for individuals to check balances, transfer funds, pay
					bills, and even apply for loans from the comfort of their homes or
					while on the go.</p>
			</td>
			<td style="width: 12%;">
				<ul class="footerul">
					<li class="footerli"><a href="">User Information</a></li>
					<li class="footerli"><a href="">View Transaction</a></li>
					<li class="footerli"><a href="">Fund Transfer</a></li>
				</ul>
			</td>
			<td style="width: 12%;">
				<ul class="footerul">
					<li class="footerli"><a href="">Request a Bank Card</a></li>
					<li class="footerli"><a href="">Update the expire card</a></li>
					<li class="footerli"><a href="">Cancel the bank card</a></li>
				</ul>
			</td>
			<td style="width: 12%;">
				<ul class="footerul">
					<li class="footerli"><a href="">Customer Support</a></li>
				</ul>
			</td>
		</tr>
	</table>


</body>
</html>