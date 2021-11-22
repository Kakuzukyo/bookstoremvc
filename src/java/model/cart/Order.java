package model.cart;

import java.util.ArrayList;
import model.book.Book;

public class Order {
	private ArrayList<Book> listBook;

	public Order() {
		listBook = new ArrayList<Book>();
	}
	
	public Order(ArrayList<Book> listBoo) {
		this.listBook = listBook;
	}

	public ArrayList<Book> getListBook() {
		return listBook;
	}

	public void setListBook(ArrayList<Book> listBook) {
		this.listBook = listBook;
	}
	
	
}
