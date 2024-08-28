package com.skilldistillery.colormind.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

class ColorSchemeTest {

	private static EntityManagerFactory emf;
	private ColorScheme colorScheme;
	private EntityManager em;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("JPAColorMind");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		colorScheme = em.find(ColorScheme.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		colorScheme = null;
	}

	@Test
	void test_ColorScheme_entity_mapping() {
		assertNotNull(colorScheme);
		assertEquals("Warm Summer", colorScheme.getName()); 
		assertEquals("A warm and energetic color scheme perfect for summer designs.", colorScheme.getDescription()); 
	}
}
