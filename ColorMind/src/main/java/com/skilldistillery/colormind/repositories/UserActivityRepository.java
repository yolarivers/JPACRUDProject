package com.skilldistillery.colormind.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import com.skilldistillery.colormind.entities.User;
import com.skilldistillery.colormind.entities.UserActivity;

public interface UserActivityRepository extends JpaRepository<User, Integer> {
    User findByUsername(String username);

	void save(UserActivity activity);
}
