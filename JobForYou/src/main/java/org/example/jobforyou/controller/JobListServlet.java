package org.example.jobforyou.controller;

import org.example.jobforyou.dao.JobDAO;
import org.example.jobforyou.model.Job;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

@WebServlet("/jobs")
public class JobListServlet extends HttpServlet {
    private JobDAO jobDAO;

    @Override
    public void init() throws ServletException {
        super.init();
        // Khởi tạo SessionFactory từ file cấu hình hibernate.cfg.xml
        SessionFactory sessionFactory = (SessionFactory) getServletContext().getAttribute("sessionFactory");
        jobDAO = new JobDAO(sessionFactory);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Job> jobs = jobDAO.getAllJobs();
        // In ra console để debug
        System.out.println("Danh sách job lấy được từ DB:");
        if (jobs != null) {
            for (Job job : jobs) {
                System.out.println(job);
            }
        } else {
            System.out.println("Không có job nào!");
        }
        req.setAttribute("jobs", jobs);
        req.getRequestDispatcher("jobs.jsp").forward(req, resp);
    }

    @Override
    public void destroy() {
        super.destroy();
    }
}
