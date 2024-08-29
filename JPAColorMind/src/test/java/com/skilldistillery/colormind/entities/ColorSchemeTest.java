package com.skilldistillery.colormind.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertTrue;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class ColorSchemeTest {

    private ColorScheme colorScheme;
    private User user;
    private List<Color> colors;

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

      
        colors = new ArrayList<>();
        Color color1 = new Color();
        color1.setName("Red");
        color1.setHexCode("#FF0000");
        color1.setRgbValue("rgb(255, 0, 0)");
        color1.setMeaning("Passion, Energy");
        colors.add(color1);

        Color color2 = new Color();
        color2.setName("Blue");
        color2.setHexCode("#0000FF");
        color2.setRgbValue("rgb(0, 0, 255)");
        color2.setMeaning("Calm, Trust");
        colors.add(color2);

       
        colorScheme = new ColorScheme();
        colorScheme.setName("Warm and Cool");
        colorScheme.setDescription("A combination of warm and cool colors");
        colorScheme.setUser(user);
        colorScheme.setColors(colors);
        colorScheme.setCreatedDate(LocalDateTime.now());
        colorScheme.setUpdatedDate(LocalDateTime.now());
    }

    @AfterEach
    void tearDown() throws Exception {
      
        colorScheme = null;
        user = null;
        colors = null;
    }

    @Test
    void testColorSchemeName() {
        assertEquals("Warm and Cool", colorScheme.getName());
    }

    @Test
    void testColorSchemeDescription() {
        assertEquals("A combination of warm and cool colors", colorScheme.getDescription());
    }

    @Test
    void testColorSchemeUser() {
        assertNotNull(colorScheme.getUser());
        assertEquals("testuser", colorScheme.getUser().getUsername());
    }

    @Test
    void testColorSchemeColors() {
        assertNotNull(colorScheme.getColors());
        assertEquals(2, colorScheme.getColors().size());
        assertEquals("Red", colorScheme.getColors().get(0).getName());
        assertEquals("Blue", colorScheme.getColors().get(1).getName());
    }

    @Test
    void testAddColor() {
        Color green = new Color();
        green.setName("Green");
        green.setHexCode("#00FF00");
        green.setRgbValue("rgb(0, 255, 0)");
        green.setMeaning("Growth, Harmony");

        colorScheme.addColor(green);

        assertEquals(3, colorScheme.getColors().size());
        assertTrue(colorScheme.getColors().contains(green));
    }

    @Test
    void testRemoveColor() {
        Color red = colorScheme.getColors().get(0);

        colorScheme.removeColor(red);

        assertEquals(1, colorScheme.getColors().size());
        assertTrue(colorScheme.getColors().contains(red));  
    }


    @Test
    void testCreatedDate() {
        assertNotNull(colorScheme.getCreatedDate());
        assertEquals(LocalDateTime.now().getDayOfYear(), colorScheme.getCreatedDate().getDayOfYear());
    }

    @Test
    void testUpdatedDate() {
        assertNotNull(colorScheme.getUpdatedDate());
        assertEquals(LocalDateTime.now().getDayOfYear(), colorScheme.getUpdatedDate().getDayOfYear());
    }
}
