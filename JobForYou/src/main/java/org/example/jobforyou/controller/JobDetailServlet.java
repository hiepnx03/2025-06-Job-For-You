package org.example.jobforyou.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.example.jobforyou.dao.JobDAO;
import org.example.jobforyou.model.Job;
import org.hibernate.SessionFactory;
import java.io.IOException;

@WebServlet("/job-detail")
public class JobDetailServlet extends HttpServlet {
    private JobDAO jobDAO;

    @Override
    public void init() throws ServletException {
        super.init();
        SessionFactory sessionFactory = (SessionFactory) getServletContext().getAttribute("sessionFactory");
        jobDAO = new JobDAO(sessionFactory);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String idStr = req.getParameter("id");
        Job job = null;
        if (idStr != null) {
            try {
                int id = Integer.parseInt(idStr);
                job = jobDAO.getJobById(id);
            } catch (NumberFormatException e) {
                // id không hợp lệ
            }
        }
        req.setAttribute("job", job);
        req.getRequestDispatcher("job-detail.jsp").forward(req, resp);
    }

    @Override
    public void destroy() {
        super.destroy();
    }
} 