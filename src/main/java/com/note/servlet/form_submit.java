package com.note.servlet;

import java.io.IOException;
import java.util.Date;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.note.dao.Factoryhelper;
import com.note.dto.Note;

/**
 * Servlet implementation class form_submit
 */
@WebServlet(name = "/form_submitt")
public class form_submit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public form_submit() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			
			Note note = new Note(title,content,new Date());
			
			EntityManagerFactory emf = Factoryhelper.getEmf();
			EntityManager entityManager = emf.createEntityManager();
			EntityTransaction transaction = entityManager.getTransaction();
			
			transaction.begin();
			entityManager.persist(note);
			transaction.commit();	
			
			response.setContentType("text/html");
			request.setAttribute("Note", Note.class);
			RequestDispatcher dispatcher = request.getRequestDispatcher("response.jsp");
			dispatcher.forward(request, response);
			
			
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	}

}
