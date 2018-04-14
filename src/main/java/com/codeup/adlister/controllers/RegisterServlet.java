package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.RegisterServlet", urlPatterns = "/register")
public class RegisterServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String phone = request.getParameter("phone");
        String password = request.getParameter("password");
        String passwordConfirmation = request.getParameter("confirm_password");

        // validate input
        boolean inputHasErrors = username.isEmpty()
            || email.isEmpty()
            || password.isEmpty()
            || (! password.equals(passwordConfirmation));

        if (inputHasErrors) {
            response.sendRedirect("/register");
            return;
        }

        User userCheck = DaoFactory.getUsersDao().findByUsername(username);
        User emailCheck = DaoFactory.getUsersDao().findByEmail(email);

        if (userCheck != null) {
            request.getSession().setAttribute("message", "Username is already taken.");
            response.sendRedirect("/register");
            return;
        } else if (emailCheck != null) {
            request.getSession().setAttribute("emessage", "Email is already taken.");
            response.sendRedirect("/register");
            return;
        }


        // create and save a new user
        User user = new User(username, email, password, firstName, lastName, phone);
        DaoFactory.getUsersDao().insert(user);
        response.sendRedirect("/profile");
    }
}
