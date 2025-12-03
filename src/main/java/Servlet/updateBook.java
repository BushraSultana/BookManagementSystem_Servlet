package Servlet;

import Entity.Book;
import Service.IBookCrud_Impl;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

public class updateBook extends HttpServlet
{
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        Integer id = Integer.parseInt(req.getParameter("id"));
        IBookCrud_Impl book = new IBookCrud_Impl();
        Book bookById = book.getBookById(id);

        if(req.getParameter("name")!=null){
            bookById.setBookName(req.getParameter("name"));
        }
        if(req.getParameter("authorName")!=null){
            bookById.setBookAuthor(req.getParameter("authorName"));
        }

        book.updateBook(bookById);
        resp.sendRedirect(req.getContextPath() + "/admin.jsp");
    }
}
