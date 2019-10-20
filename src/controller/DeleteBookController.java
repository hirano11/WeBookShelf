package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.DeleteBookServlet;

@WebServlet("/DeleteBookController")
public class DeleteBookController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String pass = "WEB-INF/top.jsp";

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		DeleteBookServlet delete = new DeleteBookServlet();
		String step = request.getParameter("step");
		if ("prepare".equals(step))
			delete.prepare(request, response);
		else
			delete.confirm(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		RequestDispatcher dispatcher = request.getRequestDispatcher(pass);
		dispatcher.forward(request, response);

	}
}