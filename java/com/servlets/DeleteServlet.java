package com.servlets;

import java.io.IOException;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.FactoryProvider;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;


public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public DeleteServlet() {
        
    }

	protected void doGet(jakarta.servlet.http.HttpServletRequest request, jakarta.servlet.http.HttpServletResponse response) throws ServletException, IOException {
		
	try {
		int noteId=Integer.parseInt(request.getParameter("note_id").trim());
		Session s=FactoryProvider.getFactory().openSession();
		Transaction tx=s.beginTransaction();
		Note note=(Note)s.get(Note.class, noteId);
		s.delete(note);
		tx.commit();
		s.close();
		response.sendRedirect("all_notes.jsp");
		
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	
	}

}
