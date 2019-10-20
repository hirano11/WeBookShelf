package model;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BookListServlet extends HttpServlet{
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException{
		//本のインスタンス取得
		BookCatalog catalog = BookCatalog.getInstance();
		//取得したインスタンスの配列取得
		Book result[] = catalog.getBooks();

		response.setContentType("text/html; charset=UTF-8");
		//本の一覧をHTMLにかいていく
		PrintWriter out = response.getWriter();

		out.println("<HTML>");
		out.println("<HEAD><TITLE>本一覧</TITLE></HEAD>");
		out.println("<BODY><>" + "現在" + result.length + "冊あります</P>");
		//本の詳細をかいていく
		BookWriter w = new BookWriter(out);
		for(int i = 0; i< result.length; i++) {
			out.println("<PRE>["+(i+1)+"]:");
			out.println("ID: "+result[i].getBookId());
			w.write(result[i]);
			out.println("</PRE>");
		}
		out.println("<A href='./'>メニューに戻る</A>");
		out.println("</BODY></HTML>");


	}

}
