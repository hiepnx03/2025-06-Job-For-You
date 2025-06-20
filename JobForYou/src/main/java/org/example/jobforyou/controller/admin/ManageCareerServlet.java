package org.example.jobforyou.controller.admin;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.example.jobforyou.dao.CareerDAO;
import org.example.jobforyou.model.Career;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import java.io.IOException;
import java.util.List;

@WebServlet("/admin/careers")
public class ManageCareerServlet extends HttpServlet {
    private CareerDAO careerDAO;

    @Override
    public void init() throws ServletException {
        super.init();
        SessionFactory sessionFactory = (SessionFactory) getServletContext().getAttribute("sessionFactory");
        careerDAO = new CareerDAO(sessionFactory);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Career> careers = careerDAO.getAllCareers();
        req.setAttribute("careers", careers);
        req.getRequestDispatcher("/career.jsp").forward(req, resp);
    }

    @Override
    public void destroy() {
        super.destroy();
    }
} 