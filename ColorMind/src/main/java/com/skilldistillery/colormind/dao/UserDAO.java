package com.skilldistillery.colormind.dao;

import java.util.List;
import com.skilldistillery.colormind.entities.Color;
import com.skilldistillery.colormind.entities.User;

public interface UserDAO {

    User findByUserName(String username);  

    User findByUserNameAndPassword(String username, String password);  

    User findById(int id);

    User save(User user);

    User update(User user);

    boolean deleteById(int id);

    List<User> findAllUsers();

    List<Color> findAllColors();
}
