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

class UserInteractionTest {

	private static EntityManagerFactory emf;
	private UserInteraction userInteraction;
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
		userInteraction = em.find(UserInteraction.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		userInteraction = null;
	}

	@Test
	void test_UserInteraction_entity_mapping() {
		assertNotNull(userInteraction);
		assertNotNull(userInteraction.getUser()); // Ensures user is mapped
		assertEquals("CREATE_SCHEME", userInteraction.getInteractionType()); // Assuming interaction type is 'CREATE_SCHEME'
	}
}
