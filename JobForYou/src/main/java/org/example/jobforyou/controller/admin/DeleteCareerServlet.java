package org.example.jobforyou.controller.admin;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.example.jobforyou.dao.CareerDAO;
import org.hibernate.SessionFactory;

import java.io.IOException;

@WebServlet("/admin/delete-career")
public class DeleteCareerServlet extends HttpServlet {
    private CareerDAO careerDAO;

    @Override
    public void init() throws ServletException {
        super.init();
        SessionFactory sessionFactory = (SessionFactory) getServletContext().getAttribute("sessionFactory");
        careerDAO = new CareerDAO(sessionFactory);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        careerDAO.deleteCareer(id);
        resp.sendRedirect(req.getContextPath() + "/career");
    }
} 