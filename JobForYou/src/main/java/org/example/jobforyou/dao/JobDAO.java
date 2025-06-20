package org.example.jobforyou.dao;

import lombok.RequiredArgsConstructor;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.example.jobforyou.model.Job;
import org.hibernate.query.Query;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import java.util.ArrayList;
import java.util.List;

@RequiredArgsConstructor
public class JobDAO {
    private final SessionFactory sessionFactory;

    public List<Job> getAllJobs() {
        try (Session session = sessionFactory.openSession()) {
            return session.createQuery("FROM Job", Job.class).list();
        }
    }

    public Job getJobById(int id) {
        try (Session session = sessionFactory.openSession()) {
            return session.get(Job.class, id);
        }
    }

    public boolean deleteJob(int id) {
        Session session = sessionFactory.openSession();
        Transaction tx = null;
        try {
            tx = session.beginTransaction();
            Job job = session.get(Job.class, id);
            if (job != null) {
                session.delete(job);
                tx.commit();
                return true;
            }
            return false;
        } catch (Exception e) {
            if (tx != null) tx.rollback();
            e.printStackTrace();
            return false;
        } finally {
            session.close();
        }
    }

    public void addJob(Job job) {
        Session session = sessionFactory.openSession();
        Transaction tx = null;
        try {
            tx = session.beginTransaction();
            session.save(job);
            tx.commit();
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            e.printStackTrace();
        } finally {
            session.close();
        }
    }

    public void updateJob(Job job) {
        Session session = sessionFactory.openSession();
        Transaction tx = null;
        try {
            tx = session.beginTransaction();
            session.update(job);
            tx.commit();
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            e.printStackTrace();
        } finally {
            session.close();
        }
    }

    public List<Job> searchJobs(String keyword, String location) {
        try (Session session = sessionFactory.openSession()) {
            CriteriaBuilder cb = session.getCriteriaBuilder();
            CriteriaQuery<Job> cq = cb.createQuery(Job.class);
            Root<Job> jobRoot = cq.from(Job.class);
            List<Predicate> predicates = new ArrayList<>();

            if (keyword != null && !keyword.isEmpty()) {
                predicates.add(cb.like(cb.lower(jobRoot.get("title")), "%" + keyword.toLowerCase() + "%"));
            }

            if (location != null && !location.isEmpty() && !"Tất cả các thành phố".equalsIgnoreCase(location)) {
                predicates.add(cb.like(cb.lower(jobRoot.get("location")), "%" + location.toLowerCase() + "%"));
            }

            cq.where(predicates.toArray(new Predicate[0]));
            Query<Job> query = session.createQuery(cq);
            return query.getResultList();
        }
    }
}
