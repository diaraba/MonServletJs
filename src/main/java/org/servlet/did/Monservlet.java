package org.servlet.did;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;




public class Monservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public Monservlet() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		this.getServletContext().getRequestDispatcher("/Inscrire.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String nom= request.getParameter("nom");
		String prenom= request.getParameter("prenom");
		String pseudo= request.getParameter("pseudo");
		String email= request.getParameter("email");
		String pass= request.getParameter("pass");
		String confirm= request.getParameter("pass1");
		if(nom.trim().equals("")||prenom.trim().equals("")||pseudo.trim().equals("")||email.trim().equals("")||pass.trim().equals(""))
		{
			request.setAttribute("error", "Veuillez renseigner les champs du formulaire !");
			this.getServletContext().getRequestDispatcher("/Inscrire.jsp").forward(request, response);
				}
		else
		{
			if(!confirm.equals(pass))
			{
				request.setAttribute("error", "Votre mot de passe ne concorde pas !");
				this.getServletContext().getRequestDispatcher("/Inscrire.jsp").forward(request, response);
				
			}
		
			else
			{
				HttpSession session = request.getSession();
				Utilisateur user = new Utilisateur(nom, prenom, pseudo, email, pass);
				
				List<Utilisateur> liste = (ArrayList<Utilisateur>) session.getAttribute("liste");
				if(liste==null)
					liste =new ArrayList<Utilisateur>();
				
				liste.add(user);
				
				request.setAttribute("nom", nom);

				request.setAttribute("email", email);
				
				request.setAttribute("pseudo", pseudo);
				session.setAttribute("liste", liste);
				session.setAttribute("user", user );
				this.getServletContext().getRequestDispatcher("/Acceuil.jsp").forward(request, response);
				
			}
			
		}
		
	}
		
	}


