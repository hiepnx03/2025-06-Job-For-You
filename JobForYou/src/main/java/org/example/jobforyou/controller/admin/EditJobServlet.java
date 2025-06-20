package org.example.jobforyou.controller.admin;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.example.jobforyou.dao.JobDAO;
import org.example.jobforyou.model.Job;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import java.io.IOException;

@WebServlet("/admin/edit-job")
public class EditJobServlet extends HttpServlet {
    private JobDAO jobDAO;

    @Override
    public void init() throws ServletException {
        super.init();
        SessionFactory sessionFactory = (SessionFactory) getServletContext().getAttribute("sessionFactory");
        jobDAO = new JobDAO(sessionFactory);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int jobId = Integer.parseInt(req.getParameter("id"));
        Job job = jobDAO.getJobById(jobId);
        req.setAttribute("job", job);
        req.getRequestDispatcher("edit-job.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        int id = Integer.parseInt(req.getParameter("id"));
        String title = req.getParameter("title");
        String company = req.getParameter("company");
        String location = req.getParameter("location");
        String description = req.getParameter("description");
        String requirement = req.getParameter("requirement");
        String salary = req.getParameter("salary");
        String jobType = req.getParameter("jobType");

        Job job = new Job();
        job.setId(id);
        job.setTitle(title);
        job.setCompany(company);
        job.setLocation(location);
        job.setDescription(description);
        job.setRequirement(requirement);
        job.setSalary(salary);
        job.setJob_type(jobType);

        jobDAO.updateJob(job);

        resp.sendRedirect(req.getContextPath() + "/admin");
    }
} 