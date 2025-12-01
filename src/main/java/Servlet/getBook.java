package Servlet;

import Entity.Book;
import Service.IBookCrud_Impl;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

public class getBook extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();

        IBookCrud_Impl service = new IBookCrud_Impl();
        List<Book> books = service.getAllBook();  // Criteria API method you wrote

        out.println("<html><body>");
        out.println("<h2>All Books</h2>");

        if (books == null || books.isEmpty()) {
            out.println("<p>No books found.</p>");
        } else {
            out.println("<table border='1' cellpadding='10'>");
            out.println("<tr>");
            out.println("<th>ID</th>");
            out.println("<th>Book Name</th>");
            out.println("<th>Author</th>");
            out.println("</tr>");

            for (Book book : books) {
                out.println("<tr>");
                out.println("<td>" + book.getBookId() + "</td>");
                out.println("<td>" + book.getBookName() + "</td>");
                out.println("<td>" + book.getBookAuthor() + "</td>");
                out.println("</tr>");
            }

            out.println("</table>");
        }

        out.println("</body></html>");
    }
    }

