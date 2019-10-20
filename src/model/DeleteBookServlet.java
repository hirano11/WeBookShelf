package model;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DeleteBookServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String step = request.getParameter("step");
		if ("prepare".equals(step))
			prepare(request, response);
		else
			confirm(request, response);
	}

	public void prepare(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String id = request.getParameter("id");
		BookCatalog catalog = BookCatalog.getInstance();
		Book book = catalog.getBook(id);

		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println("<HTML><HEAD><TITLE>本の削除確認</TITLE></HEAD>");
		if (book != null) {
			out.println("<BODY>");
			out.println("<P>この本を削除しますか？</P>");
			out.println("<PRE>");
			new BookWriter(out).write(book);
			out.println("</PRE>");
			out.println("<FORM method='GET'>");
			out.println("<INPUT type='hidden' name='step' value='confirm'>");
			out.println("<INPUT type='hidden' name='id' value='" + id + "'>");
			out.println("<INPUT type='submit' value='削除'>");
			out.println("</FORM>");
			out.println("<form action=\"AddBookController\" method=\"GET\"><input type=\"submit\" value=\"メニューへ戻る\"></form>");
			out.println("</BODY>");
		} else {
			out.println("<BODY>");
			out.println("<P>該当する本はありません。</P>");
			out.println("<form action=\"AddBookController\" method=\"GET\"><input type=\"submit\" value=\"メニューへ戻る\"></form>");
			out.println("</BODY>");
		}
		out.println("</HTML>");
	}

	public void confirm(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String id = request.getParameter("id");
		BookCatalog catalog = BookCatalog.getInstance();
		catalog.deleteBook(id);

		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println("<HTML><HEAD><TITLE>本の削除結果</TITLE></HEAD>");
		out.println("<BODY>");
		out.println("<P>削除しました。</P>");
		out.println("<form action=\"AddBookController\" method=\"GET\"><input type=\"submit\" value=\"メニューへ戻る\"></form>");
		out.println("</BODY>");
		out.println("</HTML>");
	}
}