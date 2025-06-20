package org.example.jobforyou.controller;

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
import java.util.List;

@WebServlet("/search")
public class SearchJobServlet extends HttpServlet {

    private JobDAO jobDAO;

    @Override
    public void init() throws ServletException {
        super.init();
        // It's better to manage SessionFactory lifecycle in a listener,
        // but for simplicity, we initialize it here.
        SessionFactory sessionFactory = (SessionFactory) getServletContext().getAttribute("sessionFactory");
        jobDAO = new JobDAO(sessionFactory);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        String keyword = request.getParameter("keyword");
        String location = request.getParameter("location");

        List<Job> jobList = jobDAO.searchJobs(keyword, location);

        request.setAttribute("jobs", jobList);
        request.setAttribute("keyword", keyword);
        request.setAttribute("location", location);

        request.getRequestDispatcher("search.jsp").forward(request, response);
    }
}
