package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;
import com.codeup.adlister.util.Password;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;



@WebServlet(name = "update-contact", urlPatterns = "/update-contact")
public class UpdateContactServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            return;
        }
        request.getRequestDispatcher("/WEB-INF/update-contact.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = (User) request.getSession().getAttribute("user");

        String newEmail = request.getParameter("email");
        String newFirstName = request.getParameter("firstName");
        String newLastName = request.getParameter("lastName");
        String phoneNumber = request.getParameter("phoneNumber");
        String userName = user.getUsername();

        String password = request.getParameter("password");
        if (Password.check(password, user.getPassword())) {
            DaoFactory.getUsersDao().updateContact(newEmail, newFirstName, newLastName, phoneNumber, userName);
            response.sendRedirect("/profile");
        } else {
            request.setAttribute("message", "Password does not match our records");
        }

    }
}
