<%@page import="javax.persistence.TypedQuery"%>
<%@page import="com.note.dao.Factoryhelper"%>
<%@page import="com.note.dto.Register"%>
<%@page import="java.util.List"%>
<%@page import="javax.persistence.EntityTransaction"%>
<%@page import="javax.persistence.EntityManager"%>
<%@page import="javax.persistence.Persistence"%>
<%@page import="javax.persistence.EntityManagerFactory"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>User Login</title>
<style type="text/css">
body {
	background: linear-gradient(rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.3)),
		url('https://i.pinimg.com/736x/78/81/71/7881716ea1fba58d87489b3f318d555b.jpg');
	background-size: cover;
	background-position: center;
	background-repeat: no-repeat;
	background-attachment: fixed;
	margin: 0;
	font-family: Arial, sans-serif;
}

.page-background {
	min-height: 100vh;
	margin: 0;
	padding: 20px;
	display: flex;
	justify-content: center;
	align-items: center;
}

.form-container {
	background-color: #eeeeee;
	padding: clamp(1rem, 5vw, 2.5rem);
	border-radius: 12px;
	box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
	width: 90%;
	max-width: 600px;
	transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.content-form h2 {
	text-align: center;
	color: #333;
	margin-bottom: 2rem;
	font-size: clamp(1.3rem, 4vw, 1.8rem);
}

.form-group {
	margin-bottom: 1.5rem;
}

label {
	display: block;
	margin-bottom: 0.5rem;
	color: #212121;
	font-weight: bold;
	font-size: clamp(0.9rem, 2vw, 1rem);
}

input[type="email"], input[type="password"] {
	width: 100%;
	padding: clamp(0.5rem, 2vw, 1rem);
	border: 2px solid #ddd;
	background-color: #eeeeee;
	border-radius: 6px;
	font-size: clamp(0.9rem, 2vw, 1rem);
	transition: all 0.3s ease;
}

input[type="email"]:focus, input[type="password"]:focus {
	outline: none;
	border-color: #007bff;
	box-shadow: 0 0 8px rgba(76, 175, 80, 0.3);
}

.submit-btn {
	background-color: #3395ff;
	color: white;
	padding: clamp(0.8rem, 2vw, 1rem) clamp(1rem, 3vw, 1.5rem);
	border: none;
	border-radius: 6px;
	cursor: pointer;
	width: 100%;
	font-size: clamp(1rem, 2.5vw, 1.1rem);
	font-weight: bold;
	transition: all 0.3s ease;
	margin-top: 1rem;
}

@media ( hover : hover) and (min-width: 768px) {
	.form-container:hover {
		transform: translateY(-5px);
		box-shadow: 0 6px 20px rgba(0, 0, 0, 0.15);
	}
	.submit-btn:hover {
		background-color: #007bff;
		transform: translateY(-2px);
		box-shadow: 0 4px 12px rgba(76, 175, 80, 0.2);
	}
	.submit-btn:active {
		transform: translateY(0);
	}
}

@media screen and (max-width: 768px) {
	.page-background {
		padding: 15px;
	}
}

@media screen and (max-width: 480px) {
	.form-container {
		padding: 1rem;
	}
}
</style>
</head>
<body>
	<%@include file="header.jsp"%>
	<%@include file="navbar_register.jsp" %>
	<div class="page-background">
		<div class="form-container">
			<form class="content-form" action="login" method="post">
				<h2>User Login</h2>
				<div class="form-group">
					<label for="email">Email</label> <input type="email" id="email"
						name="email" placeholder="Enter your email" required>
				</div>
				<div class="form-group">
					<label for="password">Password</label> <input type="password"
						id="password" name="password" placeholder="Enter your password"
						required>
				</div>
				<!-- Add this inside the form-container div, after the form -->
				<div style="text-align: center; margin-top: 15px;">
					<a href="register.jsp"
						style="color: #3395ff; text-decoration: none; font-size: 0.9rem;">
						Don't have an account? Register here </a>
				</div>

				<button type="submit" class="submit-btn">Login</button>
			</form>
		</div>
	</div>
</body>
</html>
