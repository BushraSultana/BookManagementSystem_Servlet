package Servlet;

import Entity.Book;
import Service.IBookCrud_Impl;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

public class addBook extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        Book book=new Book();
        book.setBookId(Integer.valueOf(req.getParameter("id")));
        book.setBookName(req.getParameter("name"));
        book.setBookAuthor(req.getParameter("authorName"));

        IBookCrud_Impl bookImp=new IBookCrud_Impl();
        bookImp.addBook(book);

        resp.getWriter().write("<h1>Servlet.Employee added sucessfully</h1>");
    }
}
