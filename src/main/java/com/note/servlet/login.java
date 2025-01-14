package com.note.servlet;

import java.io.IOException;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.note.dao.Factoryhelper;
import com.note.dto.Register;

public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public login() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String email = request.getParameter("email");
		int password = Integer.parseInt(request.getParameter("password"));
		
		EntityManagerFactory factory = Factoryhelper.getEmf();
		EntityManager manager = factory.createEntityManager();
		EntityTransaction Transaction = manager.getTransaction();
		
		Register register = manager.find(Register.class, email);
		String email2 = register.getEmail();
		int password2 = register.getPassword();
		
		System.out.println(email2);
		
		if(email.equals(email2) && password == password2) {
			response.sendRedirect("index.jsp");
		}
		else {
			response.sendRedirect("login.jsp");
		}
	}

}
