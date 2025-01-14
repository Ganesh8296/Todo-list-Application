<%@page import="com.note.dto.Note"%>
<%@page import="javax.persistence.EntityTransaction"%>
<%@page import="javax.persistence.EntityManager"%>
<%@page import="com.note.dao.Factoryhelper"%>
<%@page import="javax.persistence.EntityManagerFactory"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Note</title>
    <%@include file="navbar.jsp" %>
    <style type="text/css">
        .page-background {
            background: linear-gradient(rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.3)),
                url('https://i.pinimg.com/736x/78/81/71/7881716ea1fba58d87489b3f318d555b.jpg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            background-attachment: fixed;
            min-height: 100vh;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .page-background::before {
            content: '';
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(255, 255, 255, 0.3);
            z-index: -1;
        }

        .form-container {
            background-color: #eeeeee;
            padding: clamp(1rem, 5vw, 2.5rem);
            border-radius: 12px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            width: 90%;
            max-width: 600px;
            margin: 20px;
            margin-top: 100px;
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

        input[type="text"], textarea {
            width: 100%;
            padding: clamp(0.5rem, 2vw, 1rem);
            border: 2px solid #ddd;
            background-color: #eeeeee;
            border-radius: 6px;
            font-size: clamp(0.9rem, 2vw, 1rem);
            transition: all 0.3s ease;
        }

        textarea {
            height: clamp(150px, 30vh, 200px);
            resize: vertical;
        }

        input[type="text"]:focus, textarea:focus {
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

        @media (hover: hover) and (min-width: 768px) {
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
            .form-container {
                margin: 80px 20px 20px 20px;
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
<%@include file="header.jsp" %>
    <div class="page-background">
        <div class="form-container">
            <%
            int note_id = Integer.parseInt(request.getParameter("note_id"));
            EntityManagerFactory emf = Factoryhelper.getEmf();
            EntityManager manager = emf.createEntityManager();
            EntityTransaction Transaction = manager.getTransaction();
            int noteId = Integer.parseInt(request.getParameter("note_id"));
            Note note = manager.find(Note.class, noteId);
            %>
            <form class="content-form" action="UpdateServlet" method="post">
                <h2>Update Your Note</h2>
                <div class="form-group">
                    <input value="<%=note.getId() %>" name="noteId" type="hidden">
                    <label for="title">Title</label>
                    <input type="text" id="title" name="title" placeholder="Enter your title" value="<%=note.getTitle() %>" required>
                </div>
                <div class="form-group">
                    <label for="content">Content</label>
                    <textarea id="content" name="content" placeholder="Write your content here..." required><%=note.getConent() %></textarea>
                </div>
                <button type="submit" class="submit-btn">Update</button>
            </form>
        </div>
    </div>
</body>
</html>
