package com.skilldistillery.colormind.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import java.time.LocalDateTime;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class UserColorInteractionTest {

    private UserColorInteraction interaction;
    private User user;
    private Color color;

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

       
        color = new Color();
        color.setName("Red");
        color.setHexCode("#FF0000");
        color.setRgbValue("rgb(255, 0, 0)");
        color.setMeaning("Passion, Energy");

      
        interaction = new UserColorInteraction();
        interaction.setUser(user);
        interaction.setColor(color);
        interaction.setInteractionType("favorite");
        interaction.setTimestamp(LocalDateTime.now());
    }

    @AfterEach
    void tearDown() throws Exception {
     
        interaction = null;
        user = null;
        color = null;
    }

    @Test
    void testUserColorInteractionUser() {
        assertNotNull(interaction.getUser());
        assertEquals("testuser", interaction.getUser().getUsername());
    }

    @Test
    void testUserColorInteractionColor() {
        assertNotNull(interaction.getColor());
        assertEquals("Red", interaction.getColor().getName());
    }

    @Test
    void testUserColorInteractionType() {
        assertEquals("favorite", interaction.getInteractionType());
    }

    @Test
    void testUserColorInteractionTimestamp() {
        assertNotNull(interaction.getTimestamp());
        assertEquals(LocalDateTime.now().getDayOfYear(), interaction.getTimestamp().getDayOfYear());
    }
}
