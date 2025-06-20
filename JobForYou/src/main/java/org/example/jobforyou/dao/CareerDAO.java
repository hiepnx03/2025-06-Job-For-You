package org.example.jobforyou.dao;

import lombok.RequiredArgsConstructor;
import org.example.jobforyou.model.Career;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import java.util.List;

@RequiredArgsConstructor
public class CareerDAO {
    private final SessionFactory sessionFactory;

    public List<Career> getAllCareers() {
        try (Session session = sessionFactory.openSession()) {
            return session.createQuery("FROM Career", Career.class).list();
        }
    }

    public void addCareer(Career career) {
        try (Session session = sessionFactory.openSession()) {
            session.beginTransaction();
            session.save(career);
            session.getTransaction().commit();
        }
    }

    public Career getCareerById(int careerId) {
        try (Session session = sessionFactory.openSession()) {
            return session.get(Career.class, careerId);
        }
    }

    public void updateCareer(Career career) {
        try (Session session = sessionFactory.openSession()) {
            session.beginTransaction();
            session.update(career);
            session.getTransaction().commit();
        }
    }

    public void deleteCareer(int careerId) {
        try (Session session = sessionFactory.openSession()) {
            session.beginTransaction();
            Career career = session.get(Career.class, careerId);
            if (career != null) {
                session.delete(career);
            }
            session.getTransaction().commit();
        }
    }
} 