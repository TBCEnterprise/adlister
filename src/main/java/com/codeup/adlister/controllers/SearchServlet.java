package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "SearchServlet", urlPatterns="/ads/search")
public class SearchServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String searchTerm = (request.getParameter("search")!=null) ? request.getParameter("search") : "";
        String username = request.getParameter("username")!=null ? request.getParameter("username"):"";
        String category =request.getParameter("category");

        List<Ad> ads = DaoFactory.getAdsDao().search(searchTerm, username, category);

        request.setAttribute("ads", ads);
        request.getRequestDispatcher("/WEB-INF/ads/index.jsp").forward(request,response);

    }
}