package org.example.jobforyou.controller.admin;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.example.jobforyou.dao.JobDAO;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import java.io.IOException;

@WebServlet("/admin/delete-job")
public class DeleteJobServlet extends HttpServlet {
    private JobDAO jobDAO;

    @Override
    public void init() throws ServletException {
        super.init();
        SessionFactory sessionFactory = (SessionFactory) getServletContext().getAttribute("sessionFactory");
        jobDAO = new JobDAO(sessionFactory);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            int id = Integer.parseInt(req.getParameter("id"));
            jobDAO.deleteJob(id);
        } catch (NumberFormatException e) {
            // Xử lý nếu id không phải là 
            e.printStackTrace();
        }
        // resp.sendRedirect("jobs");
                resp.sendRedirect(req.getContextPath() + "/jobs");
    }

    @Override
    public void destroy() {
        super.destroy();
    }
} 