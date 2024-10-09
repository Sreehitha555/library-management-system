package com.example.edulib.dao;

import com.example.edulib.entities.User;
import org.hibernate.Session;
import org.hibernate.Transaction;
import com.example.edulib.util.HibernateUtil;

public class UserDAO {
    public void saveUser(User user) {
        Transaction transaction = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            transaction = session.beginTransaction();
            session.save(user);
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
    }

    // Other CRUD methods
}
