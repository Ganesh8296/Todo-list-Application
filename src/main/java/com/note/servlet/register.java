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
import javax.servlet.http.HttpSession;

import com.note.dao.Factoryhelper;
import com.note.dto.Register;

public class register extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public register() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String username = request.getParameter("fullname");
		String email = request.getParameter("email");
		int password = Integer.parseInt(request.getParameter("password"));

		Register register = new Register();
		register.setUserName(username);
		register.setEmail(email);
		register.setPassword(password); // Assume password is hashed before storage
		register.setDate(new Date());

		EntityManagerFactory factory = Factoryhelper.getEmf();
		EntityManager manager = factory.createEntityManager();
		EntityTransaction transaction = manager.getTransaction();

		try {
		    // Check if the user already exists
		    Register verify = manager.find(Register.class, email);
		    if (verify != null) { // If user exists
		        response.sendRedirect("error.jsp");
		        return;
		    }

		    // If user doesn't exist, register them
		    transaction.begin();
		    manager.persist(register);
		    transaction.commit();

		    // Set username in session
		    request.setAttribute("username", username);

		    // Forward to response page
		    RequestDispatcher dispatcher = request.getRequestDispatcher("register_response.jsp");
		    dispatcher.forward(request, response);
		} catch (Exception e) {
		    if (transaction.isActive()) {
		        transaction.rollback(); // Rollback transaction on error
		    }
		    e.printStackTrace();
		    response.sendRedirect("error.jsp?error=internal_error");
		} finally {
		    manager.close(); // Always close the EntityManager
		}

}
}
