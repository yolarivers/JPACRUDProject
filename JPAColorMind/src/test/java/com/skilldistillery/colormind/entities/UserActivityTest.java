package com.skilldistillery.colormind.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import java.time.LocalDateTime;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class UserActivityTest {

    private UserActivity activity;
    private User user;

    @BeforeAll
    static void setUpBeforeClass() throws Exception {
        
    }

    @AfterAll
    static void tearDownAfterClass() throws Exception {
        
    }

    @BeforeEach
    void setUp() throws Exception {
        
        user = new User();
        user.setUsername("testuser");
        user.setPassword("password123");
        user.setEmail("testuser@example.com");
        user.setFirstName("Test");
        user.setLastName("User");
        user.setRole("USER");
        user.setEnabled(true);
        user.setCreatedAt(LocalDateTime.now());
        user.setUpdatedAt(LocalDateTime.now());

       
        activity = new UserActivity();
        activity.setUser(user);
        activity.setActivityType("login");
        activity.setTimestamp(LocalDateTime.now());
    }

    @AfterEach
    void tearDown() throws Exception {
        
        activity = null;
        user = null;
    }

    @Test
    void testUserActivityUser() {
        assertNotNull(activity.getUser());
        assertEquals("testuser", activity.getUser().getUsername());
    }

    @Test
    void testUserActivityType() {
        assertEquals("login", activity.getActivityType());
    }

    @Test
    void testUserActivityTimestamp() {
        assertNotNull(activity.getTimestamp());
        assertEquals(LocalDateTime.now().getDayOfYear(), activity.getTimestamp().getDayOfYear());
    }
}
