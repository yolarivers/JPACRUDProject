package com.skilldistillery.colormind.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skilldistillery.colormind.entities.User;
import com.skilldistillery.colormind.repositories.UserRepository;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserRepository userRepository;

   
    @Override
    public User findByUsername(String username) {
        return userRepository.findByUsername(username);
    }


	@Override
	public User createUser(User user) {
		// TODO Auto-generated method stub
		return null;
	}

    
}
