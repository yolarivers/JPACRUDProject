package com.skilldistillery.colormind.services;

import java.time.LocalDateTime;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skilldistillery.colormind.entities.UserActivity;
import com.skilldistillery.colormind.repositories.UserActivityRepository;

@Service
public class UserActivityService {

	@Autowired
	private UserActivityRepository activityRepo;

	public void logActivity(int userId, String activityType) {
		UserActivity activity = new UserActivity();
		activity.setUserId(userId); 
		activity.setActivityType(activityType); 
		activity.setTimestamp(LocalDateTime.now()); 
		activityRepo.save(activity); 
	}
}
