<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
	background: linear-gradient(rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.3)), 
                    url('https://i.pinimg.com/736x/78/81/71/7881716ea1fba58d87489b3f318d555b.jpg');
	font-family: Arial, sans-serif;
	background-repeat: no-repeat;
	background-size: cover;
	background-color: #f5f5f5;
	display: flex;
	justify-content: center;
	align-items: center;
	min-height: 100vh;
}

.success-container {
	width: 100%;
	max-width: 500px;
	padding: 20px;
}

.success-card {
	background-color: white;
	padding: 2rem;
	border-radius: 10px;
	box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
	text-align: center;
}

.success-icon {
	background-color: #3395ff;
	color: white;
	width: 60px;
	height: 60px;
	border-radius: 50%;
	display: flex;
	justify-content: center;
	align-items: center;
	font-size: 30px;
	margin: 0 auto 20px;
}

h1 {
	color: #333;
	margin-bottom: 10px;
}

p {
	color: #666;
	margin-bottom: 25px;
}

.view-notes-btn {
	display: inline-block;
	background-color: #3395ff;
	color: white;
	padding: 12px 25px;
	border-radius: 5px;
	text-decoration: none;
	transition: background-color 0.3s ease;
}

.view-notes-btn:hover {
	background-color: #007bff;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file="header.jsp" %>
	<div class="success-container">
		<div class="success-card">
			<div class="success-icon">✓</div>
			<h1>Note Added Successfully!</h1>
			<p>Your note has been saved to the database</p>
			<a href="all_notes.jsp" class="view-notes-btn">View All Notes</a>
		</div>
	</div>
</body>
</html>