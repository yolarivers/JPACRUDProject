package com.skilldistillery.colormind.dao;

import com.skilldistillery.colormind.entities.User;

public interface UserDAO {

	User findByUserNameAndPassword(String username, String password);
	
	
}

