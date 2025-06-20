package org.example.jobforyou.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.example.jobforyou.dao.ContactDAO;
import org.example.jobforyou.model.Contact;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import java.io.IOException;
import java.util.List;

@WebServlet("/contact")
public class ContactServlet extends HttpServlet {
    private ContactDAO contactDAO;
    private SessionFactory sessionFactory;

    @Override
    public void init() throws ServletException {
        super.init();
        sessionFactory = new Configuration().configure().buildSessionFactory();
        contactDAO = new ContactDAO(sessionFactory);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Contact> contacts = contactDAO.getAllContacts();
        // Giả sử chỉ có một thông tin liên hệ, lấy phần tử đầu tiên
        if (contacts != null && !contacts.isEmpty()) {
            req.setAttribute("contact", contacts.get(0));
        }
        req.getRequestDispatcher("contact.jsp").forward(req, resp);
    }

    @Override
    public void destroy() {
        if (sessionFactory != null) {
            sessionFactory.close();
        }
        super.destroy();
    }
} 