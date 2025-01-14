package com.note.servlet;

import com.note.dao.Factoryhelper;
import com.note.dto.*;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/form_delete")
public class DeleteNoteServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String noteIdStr = request.getParameter("note_id");

        if (noteIdStr != null && !noteIdStr.isEmpty()) {
            try {
                int noteId = Integer.parseInt(noteIdStr);

                // Get EntityManager from the factory
                EntityManager entityManager = Factoryhelper.getEmf().createEntityManager();

                // Begin transaction
                EntityTransaction transaction = entityManager.getTransaction();
                transaction.begin();

                // Find the note by ID
                Note note = entityManager.find(Note.class, noteId);

                if (note != null) {
                    // Delete the note
                    entityManager.remove(note);
                    transaction.commit(); // Commit the transaction

                    response.sendRedirect("all_notes.jsp"); // Redirect to notes list after deletion
                } else {
                    response.getWriter().println("Error: Note not found.");
                }

                entityManager.close(); // Close the EntityManager

            } catch (Exception e) {
                e.printStackTrace();
                response.getWriter().println("Error deleting note: " + e.getMessage());
            }
        } else {
            response.getWriter().println("Error: Invalid note ID.");
        }
    }
}
