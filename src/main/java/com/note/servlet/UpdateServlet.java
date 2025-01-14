package com.note.servlet;

import java.io.IOException;
import java.util.Date;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.note.dao.Factoryhelper;
import com.note.dto.Note;

@WebServlet("/form_update")
public class UpdateServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public UpdateServlet() {
        super();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String title = request.getParameter("title");
        String content = request.getParameter("content");
        String noteIdStr = request.getParameter("noteId");

        if (title == null || content == null || noteIdStr == null || title.isEmpty() || content.isEmpty()) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Title, content, and note ID are required.");
            return;
        }

        try {
            int noteId = Integer.parseInt(noteIdStr);

            // Get EntityManagerFactory and create EntityManager
            EntityManagerFactory emf = Factoryhelper.getEmf();
            EntityManager em = emf.createEntityManager();

            // Start transaction
            EntityTransaction transaction = em.getTransaction();
            transaction.begin();

            // Find the existing note
            Note note = em.find(Note.class, noteId);
            if (note == null) {
                response.sendError(HttpServletResponse.SC_NOT_FOUND, "Note not found.");
                return;
            }

            // Update note details
            note.setTitle(title);
            note.setConent(content);
            note.setAddedDate(new Date());

            // Merge and commit changes
            em.merge(note);
            transaction.commit();

            // Close EntityManager
            em.close();

            // Redirect to all notes page
            response.sendRedirect("all_notes.jsp");

        } catch (NumberFormatException e) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid note ID format.");
        } catch (Exception e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "An error occurred while updating the note.");
        }
    }
}
