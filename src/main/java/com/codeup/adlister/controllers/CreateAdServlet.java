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
import java.util.Random;

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

        String[] pics = new String[10];
        pics[0] = "https://images.pexels" +
                ".com/photos/132700/pexels-photo-132700.jpeg?auto=compress&cs=tinysrgb" +
                "&dpr=2&h=350";
        pics[1] = "https://images.pexels" +
                ".com/photos/132700/pexels-photo-132700.jpeg?auto=compress&cs=tinysrgb" +
                "&dpr=2&h=350";
        pics[2] = "https://images.pexels.com/photos/825262/pexels-photo-825262.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350";
        pics[3] = "https://images.pexels" +
                ".com/photos/583842/pexels-photo-583842.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350";
        pics[4] = "https://images.pexels" +
                ".com/photos/341523/pexels-photo-341523.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350";
        pics[5] = "https://images.pexels" +
                ".com/photos/595804/pexels-photo-595804.jpeg?auto=compress&cs=tinysrgb" +
                "&dpr=2&h=350";

        Random gen = new Random();
        String pic = String.valueOf(gen.nextInt(pics.length));

        Ad ad = new Ad(
            user.getId(),
            request.getParameter("title"),
            request.getParameter("description"),
            user.getUsername(),
            cat_id
        );

        long id = DaoFactory.getAdsDao().insert(ad);
        DaoFactory.getAdsDao().insertPiv(id, cat_id);
        response.sendRedirect("/ads");
    }
}
