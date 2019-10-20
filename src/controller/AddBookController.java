package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.AddBookServlet;

@WebServlet("/AddBookController")
public class AddBookController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String pass = "WEB-INF/addbook.jsp";


	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		AddBookServlet addservlet = new AddBookServlet();
		String step = request.getParameter("step");
		if ("prepare".equals(step)) {
			addservlet.prepare(request, response);
		} else {
			addservlet.confirm(request, response);
		}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		RequestDispatcher dispatcher = request.getRequestDispatcher(pass);
		dispatcher.forward(request, response);

	}
}
