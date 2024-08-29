package com.skilldistillery.colormind.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertFalse;
import static org.junit.jupiter.api.Assertions.assertTrue;

import java.time.LocalDateTime;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class UserTest {

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
        user.setRole("ADMIN");
        user.setEnabled(true);  
        user.setCreatedAt(LocalDateTime.now());
        user.setUpdatedAt(LocalDateTime.now());
    }

    @AfterEach
    void tearDown() throws Exception {
       
        user = null;
    }

    @Test
    void testUsername() {
        assertEquals("testuser", user.getUsername());
    }

    @Test
    void testPassword() {
        assertEquals("password123", user.getPassword());
    }

    @Test
    void testEmail() {
        assertEquals("testuser@example.com", user.getEmail());
    }

    @Test
    void testFirstName() {
        assertEquals("Test", user.getFirstName());
    }

    @Test
    void testLastName() {
        assertEquals("User", user.getLastName());
    }

    @Test
    void testRole() {
        assertEquals("ADMIN", user.getRole());
    }

    @Test
    void testEnabled() {
        assertTrue(user.isEnabled()); 
        user.disable(); 
        assertFalse(user.isEnabled());  
        user.enable();  
        assertTrue(user.isEnabled());
    }

    @Test
    void testCreatedAt() {
       
        assertEquals(LocalDateTime.now().getDayOfYear(), user.getCreatedAt().getDayOfYear());
    }

    @Test
    void testUpdatedAt() {
        
        assertEquals(LocalDateTime.now().getDayOfYear(), user.getUpdatedAt().getDayOfYear());
    }
}
