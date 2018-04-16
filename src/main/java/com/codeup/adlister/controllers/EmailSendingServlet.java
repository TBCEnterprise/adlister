package com.codeup.adlister.controllers;

import com.codeup.adlister.util.EmailUtility;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/EmailSendingServlet")
public class EmailSendingServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response) throws ServletException, IOException {
        // reads form fields
        String recipient = request.getParameter("recipient");
        String subject = "DO NOT REPLY --AUTOMATED--" + request.getParameter("subject");
        String content = "Hey! Someone is interested in your post! \n \n"
                + request.getParameter("content") + "\n \n" +
                "From the TBC Team, Thank you for using Adlister!";

        String resultMessage = "";

        try {
            EmailUtility.sendEmail(recipient, subject, content);
            resultMessage = "The e-mail was sent successfully";
        } catch (Exception ex) {
            ex.printStackTrace();
            resultMessage = "There were an error: " + ex.getMessage();
        } finally {
            request.setAttribute("Message", resultMessage);
            getServletContext().getRequestDispatcher("/WEB-INF/result.jsp").forward(
                    request, response);
        }
    }
}

