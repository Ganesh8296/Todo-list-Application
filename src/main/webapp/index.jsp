<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Todo note - Your Digital Notebook</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <style>
        .hero-section {
            background: linear-gradient(rgba(0,0,0,0.7), rgba(0,0,0,0.7)),
                        url('https://images.unsplash.com/photo-1517842645767-c639042777db?ixlib=rb-1.2.1');
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            height: 80vh;
            color: white;
            padding: 100px 0;
        }
        
        .feature-card {
            transition: transform 0.3s;
            margin: 20px 0;
        }
        
        .feature-card:hover {
            transform: translateY(-10px);
        }
        
        .feature-icon {
            font-size: 2.5rem;
            color: #007bff;
        }
    </style>
</head>
<body>
	<%@include file="header.jsp" %>
    <%@include file="navbar.jsp" %>
    
    <!-- Hero Section -->
    <div class="hero-section text-center">
        <div class="container">
            <h1 class="display-3">Welcome to Todo note</h1>
            <p class="lead">Your perfect digital companion for organizing thoughts and ideas</p>
            <a href="add_notes.jsp" class="btn btn-primary btn-lg mt-4">Get Started</a>
        </div>
    </div>

    <!-- Features Section -->
    <div class="container my-5">
        <h2 class="text-center mb-5">Why Choose Todo note?</h2>
        <div class="row">
            <div class="col-md-4">
                <div class="card feature-card text-center p-4">
                    <i class="fas fa-lock feature-icon mb-3"></i>
                    <h4>Secure Storage</h4>
                    <p>Your notes are encrypted and safely stored in our secure servers</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card feature-card text-center p-4">
                    <i class="fas fa-sync feature-icon mb-3"></i>
                    <h4>Auto Sync</h4>
                    <p>Access your notes from any device with real-time synchronization</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card feature-card text-center p-4">
                    <i class="fas fa-palette feature-icon mb-3"></i>
                    <h4>Rich Formatting</h4>
                    <p>Create beautiful notes with our rich text editor and formatting tools</p>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <footer class="bg-dark text-light py-4 mt-5">
        <div class="container text-center">
            <p>&copy; 2025 Todo note. All rights reserved.</p>
        </div>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
