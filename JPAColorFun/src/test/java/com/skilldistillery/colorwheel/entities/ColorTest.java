package com.skilldistillery.colorwheel.entities;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

class ColorTest {

  private static EntityManagerFactory emf;
  private EntityManager em;
  private Color color;

  @BeforeAll
  static void setUpBeforeClass() throws Exception {
    emf = Persistence.createEntityManagerFactory("JPAColorFun");
  }

  @AfterAll
  static void tearDownAfterClass() throws Exception {
    emf.close();
  }

  @BeforeEach
  void setUp() throws Exception {
    em = emf.createEntityManager();
    color = em.find(Color.class, 1); 
  }

  @AfterEach
  void tearDown() throws Exception {
    em.close();
    color = null;
  }

  @Test
  void test_Color_entity_mappings() {
    assertNotNull(color);
    assertEquals("Crimson", color.getName());
  }
}