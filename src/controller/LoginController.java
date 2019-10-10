package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.LoginForm;
import model.LoginService;

/**
 * Servlet implementation class TestServlet
 */
@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static String pass = "/WEB-INF/top.jsp";

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		// パラメータの取得
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");

		LoginForm loginForm = new LoginForm(userName, password);
		LoginService loginService = new LoginService();

		// ログインチェック
		if(loginService.check(loginForm)) {
			HttpSession session = request.getSession();
			session.setAttribute("loginForm", loginForm);
		}

		// top画面に遷移
		RequestDispatcher dispatcher = request.getRequestDispatcher(pass);
		dispatcher.forward(request, response);
	}

}
