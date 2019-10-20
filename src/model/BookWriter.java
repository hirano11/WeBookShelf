package model;

import java.io.PrintWriter;

public class BookWriter {
	protected PrintWriter out;

	public BookWriter(PrintWriter out) {
		this.out = out;
	}

	public void write(Book book) {
		out.println("タイトル: " + book.getTitle());
		out.println("著者: " + book.getAuthor());
		out.println("訳者: "+ book.getTranslator());
		out.println("出版社: "+ book.getPublisher());
		out.println("出版年月日: "+ book.getPublicationDate());
		out.println("ISBN/ISSN: "+ book.getCode());
		out.println("備考: " + book.getMemo());
		out.println("キーワード: "+ book.getKeyword());
		out.println("登録者: "+ book.getDataCreator());
		out.println("登録日: "+ book.getDataCreatedDate());
	}
}