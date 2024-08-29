package com.skilldistillery.colormind.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class ColorSchemeColorTest {

    private ColorSchemeColor colorSchemeColor;
    private ColorScheme colorScheme;
    private Color color;

    @BeforeAll
    static void setUpBeforeClass() throws Exception {
        
    }

    @AfterAll
    static void tearDownAfterClass() throws Exception {
       
    }

    @BeforeEach
    void setUp() throws Exception {
        
        colorScheme = new ColorScheme();
        colorScheme.setName("Warm and Cool");
        colorScheme.setDescription("A combination of warm and cool colors");

        
        color = new Color();
        color.setName("Red");
        color.setHexCode("#FF0000");
        color.setRgbValue("rgb(255, 0, 0)");
        color.setMeaning("Passion, Energy");

      
        colorSchemeColor = new ColorSchemeColor();
        colorSchemeColor.setColorScheme(colorScheme);
        colorSchemeColor.setColor(color);
        colorSchemeColor.setPosition(1);
    }

    @AfterEach
    void tearDown() throws Exception {
        
        colorSchemeColor = null;
        colorScheme = null;
        color = null;
    }

    @Test
    void testColorSchemeColorColorScheme() {
        assertNotNull(colorSchemeColor.getColorScheme());
        assertEquals("Warm and Cool", colorSchemeColor.getColorScheme().getName());
    }

    @Test
    void testColorSchemeColorColor() {
        assertNotNull(colorSchemeColor.getColor());
        assertEquals("Red", colorSchemeColor.getColor().getName());
    }

    @Test
    void testColorSchemeColorPosition() {
        assertEquals(1, colorSchemeColor.getPosition());
    }
}
