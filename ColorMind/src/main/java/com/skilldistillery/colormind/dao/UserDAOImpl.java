package com.skilldistillery.colormind.dao;

import org.springframework.stereotype.Repository;

import com.skilldistillery.colormind.entities.User;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;

@Repository
public class UserDAOImpl implements UserDAO {

	@PersistenceContext
    private EntityManager em;
	
	@Override
	public User findByUserNameAndPassword(String username, String password) {
		String query = "SELECT u FROM User u WHERE u.username = :un AND u.password = :pw";
		
	return	em.createQuery(query,User.class).setParameter("un", username).setParameter("pw", password)
		.getSingleResult();
		
		
	
	}

	
}
