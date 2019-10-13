package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/PutBookServlet")
public class PutBookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String jsp1 = "/WEB-INF/top.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(jsp1);
		rd.forward(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String ret[] = request.getParameterValues("text1");
		String jsp2 = "/WEB-INF/top.jsp?name="+ret[0];
		RequestDispatcher rd = request.getRequestDispatcher(jsp2);
		rd.forward(request,response);
	}
	public static String getNotNullString( String str ) {
		if ( str == null )
		{

		return "";
		}

		return str;
		}
}