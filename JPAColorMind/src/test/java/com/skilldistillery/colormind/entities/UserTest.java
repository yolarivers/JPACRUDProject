package com.skilldistillery.colormind.entities;

import static org.junit.jupiter.api.Assertions.*;

import java.time.LocalDateTime;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class UserTest {

    private User user;

    @BeforeEach
    void setUp() throws Exception {
        user = new User();
        user.setId(1);
        user.setUsername("testuser");
        user.setPassword("password123");
        user.setEmail("testuser@example.com");
        user.setFirstName("Test");
        user.setLastName("User");
        user.setRole("USER");
        user.setEnabled(true);
        user.setCreatedAt(LocalDateTime.now());
        user.setUpdatedAt(LocalDateTime.now());
    }

    @Test
    void test_user_entity_mapping() {
        assertNotNull(user);
        assertEquals(1, user.getId());
        assertEquals("testuser", user.getUsername());
        assertEquals("password123", user.getPassword());
        assertEquals("testuser@example.com", user.getEmail());
        assertEquals("Test", user.getFirstName());
        assertEquals("User", user.getLastName());
        assertEquals("USER", user.getRole());
        assertTrue(user.isEnabled());
        assertNotNull(user.getCreatedAt());
        assertNotNull(user.getUpdatedAt());
    }

    @Test
    void test_user_equals_hashCode() {
        User user2 = new User();
        user2.setId(1);

        assertTrue(user.equals(user2));
        assertEquals(user.hashCode(), user2.hashCode());
    }

    @Test
    void test_user_toString() {
        String expected = "User [id=1, username=testuser, email=testuser@example.com, firstName=Test, lastName=User, role=USER, enabled=true, createdAt="
                + user.getCreatedAt() + ", updatedAt=" + user.getUpdatedAt() + "]";
        assertEquals(expected, user.toString());
    }
}
