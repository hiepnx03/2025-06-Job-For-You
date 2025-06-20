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

@WebServlet("/admin/add-job")
public class AddJobServlet extends HttpServlet {
    private JobDAO jobDAO;

    @Override
    public void init() throws ServletException {
        super.init();
        SessionFactory sessionFactory = (SessionFactory) getServletContext().getAttribute("sessionFactory");
        jobDAO = new JobDAO(sessionFactory);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        String title = req.getParameter("title");
        String company = req.getParameter("company");
        String location = req.getParameter("location");
        String description = req.getParameter("description");
        String requirement = req.getParameter("requirement");
        String salary = req.getParameter("salary");
        String jobType = req.getParameter("jobType");

        Job newJob = new Job();
        newJob.setTitle(title);
        newJob.setCompany(company);
        newJob.setLocation(location);
        newJob.setDescription(description);
        newJob.setRequirement(requirement);
        newJob.setSalary(salary);
        newJob.setJob_type(jobType);

        jobDAO.addJob(newJob);

        resp.sendRedirect(req.getContextPath() + "/admin");
    }
} 