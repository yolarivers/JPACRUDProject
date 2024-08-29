package com.skilldistillery.colormind.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class AnalogousColorTest {

    private AnalogousColor analogousColor;
    private Color mainColor;
    private Color relatedColor;

    @BeforeAll
    static void setUpBeforeClass() throws Exception {
       
    }

    @AfterAll
    static void tearDownAfterClass() throws Exception {
       
    }

    @BeforeEach
    void setUp() throws Exception {
        
        mainColor = new Color();
        mainColor.setName("Red");
        mainColor.setHexCode("#FF0000");
        mainColor.setRgbValue("rgb(255, 0, 0)");
        mainColor.setMeaning("Passion, Energy");

        
        relatedColor = new Color();
        relatedColor.setName("Orange");
        relatedColor.setHexCode("#FFA500");
        relatedColor.setRgbValue("rgb(255, 165, 0)");
        relatedColor.setMeaning("Warmth, Enthusiasm");

        
        analogousColor = new AnalogousColor();
        analogousColor.setColor(mainColor);
        analogousColor.setAnalogousColor(relatedColor);
    }

    @AfterEach
    void tearDown() throws Exception {
        
        analogousColor = null;
        mainColor = null;
        relatedColor = null;
    }

    @Test
    void testAnalogousColorMainColor() {
        assertNotNull(analogousColor.getColor());
        assertEquals("Red", analogousColor.getColor().getName());
    }

    @Test
    void testAnalogousColorRelatedColor() {
        assertNotNull(analogousColor.getAnalogousColor());
        assertEquals("Orange", analogousColor.getAnalogousColor().getName());
    }
}
