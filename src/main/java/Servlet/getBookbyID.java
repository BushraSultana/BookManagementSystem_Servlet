package Servlet;

import Entity.Book;
import Service.IBookCrud_Impl;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

public class getBookbyID extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


        Integer id = Integer.parseInt(req.getParameter("id"));
        IBookCrud_Impl book = new IBookCrud_Impl();
        Book bookById = book.getBookById(id);

        // Set content type to HTML
        resp.setContentType("text/html");

        // Write HTML content
        resp.getWriter().println("<!DOCTYPE html>");
        resp.getWriter().println("<html>");
        resp.getWriter().println("<head>");
        resp.getWriter().println("<title>Book Details</title>");
        resp.getWriter().println("<style>");
        resp.getWriter().println("body { font-family: Arial, sans-serif; background-color: #f4f4f4; }");
        resp.getWriter().println(".container { width: 50%; margin: 50px auto; padding: 20px; background-color: #fff; border-radius: 8px; box-shadow: 0 0 10px rgba(0,0,0,0.1); }");
        resp.getWriter().println("h2 { color: #333; }");
        resp.getWriter().println("p { font-size: 18px; }");
        resp.getWriter().println("</style>");
        resp.getWriter().println("</head>");
        resp.getWriter().println("<body>");
        resp.getWriter().println("<div class='container'>");
        resp.getWriter().println("<h2>Book Details</h2>");
        resp.getWriter().println("<p><strong>ID:</strong> " + bookById.getBookId() + "</p>");
        resp.getWriter().println("<p><strong>Name:</strong> " + bookById.getBookName() + "</p>");
        resp.getWriter().println("<p><strong>Name:</strong> " + bookById.getBookAuthor() + "</p>");
        resp.getWriter().println("</div>");
        resp.getWriter().println("</body>");
        resp.getWriter().println("</html>");
    }
}