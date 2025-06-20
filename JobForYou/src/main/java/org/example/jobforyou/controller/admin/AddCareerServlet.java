package org.example.jobforyou.controller.admin;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.example.jobforyou.dao.CareerDAO;
import org.example.jobforyou.model.Career;
import org.hibernate.SessionFactory;

import java.io.IOException;

@WebServlet("/admin/add-career")
public class AddCareerServlet extends HttpServlet {
    private CareerDAO careerDAO;

    @Override
    public void init() throws ServletException {
        super.init();
        SessionFactory sessionFactory = (SessionFactory) getServletContext().getAttribute("sessionFactory");
        careerDAO = new CareerDAO(sessionFactory);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String name = req.getParameter("name");
        String description = req.getParameter("description");

        Career career = new Career();
        career.setName(name);
        career.setDescription(description);

        careerDAO.addCareer(career);
        resp.sendRedirect(req.getContextPath() + "/career");
    }
} 