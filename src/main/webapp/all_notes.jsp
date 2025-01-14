<%@page import="javax.persistence.TypedQuery"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@page import="com.note.dto.Note"%>
<%@page import="java.util.List"%>
<%@page import="javax.persistence.EntityManager"%>
<%@page import="javax.persistence.EntityManagerFactory"%>
<%@page import="com.note.dao.Factoryhelper"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Notes</title>
<%@include file="navbar.jsp"%>
<style type="text/css">
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

.container {
	padding: 20px;
	max-width: 1200px;
	margin: 0 auto;
}

h1 {
	text-align: center;
	color: white;
	margin: 30px 0;
}

.card {
	background-color: white;
	border-radius: 12px;
	box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
	width: 100%;
	max-width: 800px;
	overflow: hidden;
	margin: 30px auto;
	transition: transform 0.2s ease;
}

.card:hover {
	transform: translateY(-5px);
}

.card-header {
	background-color: #f8f9fa;
	padding: 20px 25px;
	border-bottom: 1px solid #eee;
	display: flex;
	justify-content: space-between;
	align-items: center;
}

.note-id {
	color: #666;
	font-weight: bold;
	font-size: 1rem;
}

.note-title {
	color: #333;
	font-weight: bold;
	font-size: 1.2rem;
}

.note-date {
	color: #888;
	font-size: 0.9rem;
}

.card-content {
	padding: 25px;
}

.card-content p {
	color: #333;
	line-height: 1.8;
	font-size: 1.1rem;
}

.card-actions {
	padding: 15px 25px;
	background-color: #f8f9fa;
	border-top: 1px solid #eee;
	display: flex;
	justify-content: flex-end;
	gap: 10px;
}

.btn {
	padding: 8px 20px;
	border: none;
	border-radius: 6px;
	cursor: pointer;
	font-weight: bold;
	transition: background-color 0.3s ease;
}

.btn-update {
	background-color: #3395ff;
	color: white;
}

.btn-update:hover {
	background-color: #0056b3;
}

.btn-delete {
	background-color: #dc3545;
	color: white;
}

.btn-delete:hover {
	background-color: #c82333;
}
.image-container {
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 50vh;
}

.centered-image {
    max-width: 30%;
    height: auto;
    border-radius: 10px;
    box-shadow: 0 4px 8px rgba(0,0,0,0.1);
    transition: transform 0.3s ease;
}

.centered-image:hover {
    transform: scale(1.02);
}

</style>
</head>
<body>
<%@include file="header.jsp" %>
	<div class="container">

		<h1>All Notes</h1>
		<%
		EntityManager em = Factoryhelper.getEmf().createEntityManager();
		TypedQuery<Note> q = em.createQuery("from Note", Note.class);
		List<Note> list = q.getResultList();
		if (list != null && !list.isEmpty()) {
			for (Note note : list) {
		%>

		<div class="card">
			<div class="card-header">
				<span class="note-id"><%=note.getId()%></span> <span
					class="note-title"><%=note.getTitle()%></span> <span
					class="note-date"><%=note.getAddedDate()%></span>
			</div>
			<div class="card-content">
				<p><%=note.getConent()%></p>
			</div>
			<div class="card-actions">
				<button class="btn btn-update"
					onclick="location.href='edit.jsp?note_id=<%=note.getId()%>'">Update</button>
				<button class="btn btn-delete"
					onclick="location.href='DeleteNoteServlet?note_id=<%=note.getId()%>'">Delete</button>
			</div>
		</div>

		<%
		}
		} else {
		%>
		<h1>not data found</h1>
		<div class="image-container">
			<img
				src="https://img.freepik.com/free-vector/no-data-concept-illustration_114360-536.jpg?t=st=1736757955~exp=1736761555~hmac=8ed1410b8d4da02ef31c81ebfe97c2075e90f963b4418898f1c62a6807baafc4&w=740"
				alt="Centered Image" class="centered-image">
		</div>
		
		
		<%
		}
		%>
	</div>
</body>
</html>
