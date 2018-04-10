package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "SearchByUsernameServlet", urlPatterns="/ads/user")
public class SearchByUsernameServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        User user= (User) request.getSession().getAttribute("user");
        String username = request.getParameter("username");
//        User user=DaoFactory.getUsersDao().findbyUsername(username);
        request.setAttribute("username", username);
        request.setAttribute("ads", DaoFactory.getAdsDao().showUserAds(username));
        request.getRequestDispatcher("/WEB-INF/ads/user_ads.jsp").forward(request,response);


    }
}