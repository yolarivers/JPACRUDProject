package com.skilldistillery.colormind.services;

import com.skilldistillery.colormind.entities.User;

public interface UserService {
    User findByUsername(String username);
    User createUser(User user);
}
