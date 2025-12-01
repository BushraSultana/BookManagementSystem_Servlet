package Interface;

import Entity.Book;

import java.util.List;

public interface IBookCrud {

    void addBook(Book book);
    void updateBook(Book book);
    void deleteBook(int id);
    List<Book> getAllBook();
    Book getBookById(int id);
}
