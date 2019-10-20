package model;

import java.io.IOException;
import java.io.PrintWriter;

//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet("/addservlet")
public class AddBookServlet extends HttpServlet {
	/*public void doPost(HttpServletRequest request, HttpServletResponse response)throws IOException{
		String step = request.getParameter("step");
		if("prepare".equals(step)) {
			prepare(request,response);
		}
		else {
			confirm(request, response);
		}
	}
	*/
	public void prepare(HttpServletRequest request, HttpServletResponse response)throws IOException{
		String errorMessage ="";
		Book book = new Book();
		String title = request.getParameter("title");
		book.setTitle(title);

		//パラメータがnullの場合のエラーメッセージ出力
		//とりあえずあとで

		response.setContentType("text/html; charset=Shift-JIS");
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE html>");
		out.println("<HTML><HEAD><TITLE>本の登録確認</TITLE><meta charset=\"UTF-8\"></HEAD>");

		//nullじゃない場合
		out.println("<BODY>");
		out.println("この内容で登録しますか？");
		out.println("<PRE>");
		new BookWriter(out).write(book);
		out.println("</PRE>");
		out.println("<FORM method='POST'>");
		out.println("<INPUT type='hidden' name='step' value='confirm'>");
		out.println("<INPUT type='submit' value='登録'>");
		out.println("</FORM>");
		out.println("<form action=\"BackController\" method=\"GET\"><input type=\"submit\" value=\"topへ戻る\"></form>");
		out.println("</BODY>");
		request.getSession().setAttribute("book", book);


		//nullの場合、エラーメッセージを出力し、メニューに戻るリンクをつける

	}

		public void confirm(HttpServletRequest request, HttpServletResponse response) throws IOException {
			Book book = (Book)request.getSession().getAttribute("book");
			BookCatalog catalog = BookCatalog.getInstance();
			catalog.addBook(book);

			response.setContentType("text/html; charset=Shift-JIS");
			PrintWriter out = response.getWriter();
			out.println("<HTML><HEAD><TITLE>本の登録結果</TITLE></HEAD>");
			out.println("<BODY>");
			out.println("<P>登録しました。</P>");
			out.println("<form action=\"BackController\" method=\"GET\"><input type=\"submit\" value=\"topへ戻る\"></form>");
			out.println("</BODY>");
			out.println("</HTML>");
	}

}
