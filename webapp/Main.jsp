<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="css/new5.css">
<script src="js/Login.js"></script>
<style>
.button {
    color: white;
    margin: 20px; /* Adjust the margin to control the space between buttons */
    cursor: pointer;
    background-color: #5160b4;
    text-align: center;
    border-radius: 12px;
    padding: 11px 50px;
    outline: none;
    color: white;
    transition: 0.25s;
    font-size: 20px;
    font-weight: bold;
}

.button:hover {
    background: linear-gradient(to right, #25c481, #25b7c4);
    transform: scale(1.06);
}




 *{
    margin: 0;
    padding: 0;
}

html{
    height: 100%;
}

a{
    font-family: inter,Arial, Helvetica, sans-serif;
    font-weight: 500;
}

body{
    font-family: inter,Arial, Helvetica, sans-serif;
    min-height: 100%;
   

}

body{
  background: -webkit-linear-gradient(left, #25c481, #25b7c4);
  background: linear-gradient(45deg, #49a09d, #5f2c82);
  font-family: 'Roboto', sans-serif;
}
body {
			background-color : white;
            
            display: flex;
            justify-content: center;
            align-items: center;
            margin: 0;
			
        }
</style>
</head>

<body class="body">
	<a href="FundTransfer.jsp">
		<button type="submit" id="fundTransfer" name="fundTransfer"
			class="button">Fund Transfer</button>
	</a>
	<form action="selects" method="post">
		
		<button type="submit" id="viewBalance" name="viewBalance"
			class="button">View Transfer</button>
	</form>

</body>
</html>



	