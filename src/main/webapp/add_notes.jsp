<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>add_notes</title>
<style>
    body {
        background: linear-gradient(rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.3)), 
                    url('https://i.pinimg.com/736x/78/81/71/7881716ea1fba58d87489b3f318d555b.jpg');
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
        background-attachment: fixed;
        min-height: 100vh;
    }
    
    /* Optional: Add an overlay to improve text readability */
    body::before {
        content: '';
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background: rgba(255, 255, 255, 0.3); /* Adjust opacity as needed */
        z-index: -1;
    }
</style>
</head>
<body>
<%@include file="header.jsp" %>
<%@include file="navbar.jsp" %>
<br>
<%@include file="form.jsp" %>
</body>
</html>
