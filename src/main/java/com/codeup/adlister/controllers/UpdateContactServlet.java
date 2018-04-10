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
        System.out.println(user.getUsername() + user.getPassword() + user.getFirstName
                () + user.getLastName() + user.getEmail() + user.getPhoneNumber());

        String newEmail = request.getParameter("email");
        if (newEmail.isEmpty()) {
            String email = user.getEmail();
            user.setEmail(email);
        } else {
            user.setEmail(newEmail);
        }

        String newFirstName = request.getParameter("firstName");
        if (newFirstName.isEmpty()) {
            String email = user.getFirstName();
            user.setFirstName(email);
        } else {
            user.setFirstName(newFirstName);
        }

        String newLastName = request.getParameter("lastName");
        if (newLastName.isEmpty()) {
            String lastName = user.getLastName();
            user.setLastName(lastName);
        } else {
            user.setLastName(newLastName);
        }

        String phoneNumber = request.getParameter("phoneNumber");
        if (phoneNumber.isEmpty()) {
            String phoneNum = user.getPhoneNumber();
            user.setPhoneNumber(phoneNum);
        } else {
            user.setPhoneNumber(phoneNumber);
        }
        String password = request.getParameter("password");
        if (Password.check(password, user.getPassword())) {
            DaoFactory.getUsersDao().updateContact(user);
            response.sendRedirect("/profile");
        } else {
            request.getAttribute("message");
        }

    }
}
