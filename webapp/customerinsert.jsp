<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <link rel="stylesheet" type="text/css" href="LoginSignInCSS.css">
    <script src="customerinsertJS.js"></script>
    
    <title>Insert title here</title>
</head>
<body>
    <div class="login-card1">
        <div class="login-content">
            <h1>Sign In</h1>
            <form action="tinsert" method="post" onsubmit="return checkPassword()">
                <label for="name"></label>
                <input type="text" id="name" name="name"  placeholder="Enter Username" required>

                <label for="email"></label>
                <input type="text" id="email" name="email" placeholder="Enter email" required>

                <label for="phone"></label>
                <input type="text" id="phone" name="phone" required placeholder="Enter phone" pattern="[0-9]{10}" required>

                <label for="uid"></label>
                <input type="text" id="uid" name="uid" required placeholder="Enter Uid">

                <label for="psw"></label>
                <input type="password" id="psw" name="psw"  placeholder="Enter password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{5,10}" required>
                
                 <label for="psw-comfirm"></label>
            	<input type="password" id="confrmpsw" placeholder="Confirm Password" name="conpsw" required><br/>
                
                <input type="submit" name="submit" value="Create Customer">
                
            </form>
            <p>Have an account? <a href="login.jsp">Login</a></p>
        </div>
    </div>
</body>
</html>
