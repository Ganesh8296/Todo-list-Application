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

.error-container {
    width: 100%;
    max-width: 500px;
    padding: 20px;
}

.error-card {
    background-color: white;
    padding: 2rem;
    border-radius: 10px;
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
    text-align: center;
}

.error-icon {
    background-color: #ff3333;
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

.try-again-btn {
    display: inline-block;
    background-color: #ff3333;
    color: white;
    padding: 12px 25px;
    border-radius: 5px;
    text-decoration: none;
    transition: background-color 0.3s ease;
}

.try-again-btn:hover {
    background-color: #cc0000;
}
</style>
<meta charset="UTF-8">
<title>Error Page</title>
</head>
<body>
<%@include file="header.jsp" %>
    <div class="error-container">
        <div class="error-card">
            <div class="error-icon">✕</div>
            <h1>Operation Failed!</h1>
            <p>the same email address is already exist</p>
            <a href="register.jsp" class="try-again-btn">Try Again</a>
        </div>
    </div>
</body>
</html>
