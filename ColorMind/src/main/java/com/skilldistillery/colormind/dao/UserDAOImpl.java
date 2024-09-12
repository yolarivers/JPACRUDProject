package com.skilldistillery.colormind.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.skilldistillery.colormind.entities.Color;
import com.skilldistillery.colormind.entities.User;

import jakarta.persistence.EntityManager;
import jakarta.persistence.NoResultException;
import jakarta.persistence.PersistenceContext;
import jakarta.transaction.Transactional;

@Transactional
@Repository
public class UserDAOImpl implements UserDAO {

    @PersistenceContext
    private EntityManager em;

    @Override
    public User findByUserNameAndPassword(String username, String password) {
        String query = "SELECT u FROM User u WHERE u.username = :un AND u.password = :pw";
        User user = null;
        try {
            user = em.createQuery(query, User.class)
                     .setParameter("un", username)
                     .setParameter("pw", password)
                     .getSingleResult();
        } catch (NoResultException e) {
            System.out.println("User not found with given username and password");
        }
        return user;
    }

    @Override
    public User findByUserName(String username) {
        String query = "SELECT u FROM User u WHERE u.username = :un";
        User user = null;
        try {
            user = em.createQuery(query, User.class)
                     .setParameter("un", username)
                     .getSingleResult();
        } catch (NoResultException e) {
            System.out.println("User not found with given username");
        }
        return user;
    }

    @Override
    public User findById(int id) {
        return em.find(User.class, id);
    }

    @Override
    public User save(User user) {
        user.setRole("user");  
        user.setEnabled(true); 
        em.persist(user);
        em.flush();
        return user;
    }

    @Override
    public User update(User user) {
        em.merge(user);
        em.flush();
        return user;
    }

    @Override
    public boolean deleteById(int id) {
        User user = em.find(User.class, id);
        if (user != null) {
            em.remove(user);
            em.flush();
            return true;
        }
        return false;
    }

    @Override
    public List<User> findAllUsers() {
        String query = "SELECT u FROM User u";
        return em.createQuery(query, User.class).getResultList();
    }

    @Override
    public List<Color> findAllColors() {
        String query = "SELECT c FROM Color c";
        return em.createQuery(query, Color.class).getResultList();
    }
}
