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

        //this being sent to jsp as request
        req.setAttribute("Books", books);
        req.getRequestDispatcher("getAllBook.jsp").forward(req, resp);
    }
    }

