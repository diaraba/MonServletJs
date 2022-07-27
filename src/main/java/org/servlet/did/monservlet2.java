package org.servlet.did;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;


public class monservlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public monservlet2() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
			}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
        String pseudo=request.getParameter("pseudo");
		String pass= request.getParameter("pass");

		String email= request.getParameter("email");
		  if(pseudo!=null) {

				request.setAttribute("pseudo", pseudo);

				request.setAttribute("email", email);
			  this.getServletContext().getRequestDispatcher("/Acceuil.jsp").forward(request, response);
					
		             }
		  else
		  {
			  this.getServletContext().getRequestDispatcher("/Login.jsp").forward(request, response);
		  }
		
	}

}
