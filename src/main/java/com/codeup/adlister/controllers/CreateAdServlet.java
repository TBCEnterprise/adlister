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
import java.sql.Date;
import java.sql.Time;
import java.sql.Timestamp;

import static java.sql.JDBCType.NULL;
import static java.sql.JDBCType.TIMESTAMP;

@WebServlet(name = "controllers.CreateAdServlet", urlPatterns = "/ads/create")
public class CreateAdServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getSession().setAttribute("url", "/ads/create");
        if(request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            return;
        }
        request.getRequestDispatcher("/WEB-INF/ads/create.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        User user = (User) request.getSession().getAttribute("user");
        long cat_id = Long.parseLong(request.getParameter("cat_id"));
        String pic = request.getParameter("pic");
        if(pic == null || pic.isEmpty()) {
            pic = "https://images.pexels.com/photos/776632/pexels-photo-776632.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350";
        }

        java.util.Date today = new java.util.Date();
        Timestamp ts = new Timestamp(today.getTime());

        Ad ad = new Ad(
            user.getId(),
            request.getParameter("title"),
            request.getParameter("description"),
            user.getUsername(),
            cat_id,
            pic,
            ts
        );

        long id = DaoFactory.getAdsDao().insert(ad);

        DaoFactory.getAdsDao().insertPiv(id, cat_id);
        response.sendRedirect("/ads");
    }
}
