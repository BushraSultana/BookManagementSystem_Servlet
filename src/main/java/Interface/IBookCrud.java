package Interface;

import Entity.Book;

import java.util.List;

public interface IBookCrud {

    boolean addBook(Book book);
    void updateBook(Book book);
    void deleteBook(int id);
    List<Book> getAllBook();
    Book getBookById(int id);
    Book validation(Integer id,String name);
}
