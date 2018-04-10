package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet (name = "editAd", urlPatterns = ("/ads/ad_edit"))
public class AdEditServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            return;
        }
        long id = Long.parseLong(request.getParameter("id"));
        request.setAttribute("ad", DaoFactory.getAdsDao().findById(id));
        request.getRequestDispatcher("/WEB-INF/ads/ad_edit.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String newTitle = request.getParameter("title");
        String newDesc = request.getParameter("description");
        long id = Long.parseLong(request.getParameter("id"));
        long cat_id = Long.parseLong(request.getParameter("cat_id"));

        DaoFactory.getAdsDao().updateAd(newTitle, newDesc, cat_id, id);
        response.sendRedirect("/ads");
    }
}
