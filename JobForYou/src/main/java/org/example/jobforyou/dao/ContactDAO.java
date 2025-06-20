package org.example.jobforyou.dao;

import lombok.RequiredArgsConstructor;
import org.example.jobforyou.model.Contact;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import java.util.List;

@RequiredArgsConstructor
public class ContactDAO {
    private final SessionFactory sessionFactory;

    public List<Contact> getAllContacts() {
        try (Session session = sessionFactory.openSession()) {
            return session.createQuery("FROM Contact", Contact.class).list();
        }
    }
} 