package org.example.jobforyou.controller.admin;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.example.jobforyou.dao.CompanyDAO;
import org.example.jobforyou.model.Company;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import java.io.IOException;

@WebServlet("/admin/edit-company")
public class EditCompanyServlet extends HttpServlet {
    private CompanyDAO companyDAO;

    @Override
    public void init() throws ServletException {
        super.init();
        SessionFactory sessionFactory = (SessionFactory) getServletContext().getAttribute("sessionFactory");
        companyDAO = new CompanyDAO(sessionFactory);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        Company company = companyDAO.getCompanyById(id);
        req.setAttribute("company", company);
        req.getRequestDispatcher("/admin/edit-company.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        int id = Integer.parseInt(req.getParameter("id"));
        String name = req.getParameter("name");
        String logoUrl = req.getParameter("logoUrl");

        Company company = new Company();
        company.setId(id);
        company.setName(name);
        company.setLogoUrl(logoUrl);

        companyDAO.updateCompany(company);
        resp.sendRedirect(req.getContextPath() + "/companies");
    }
} 