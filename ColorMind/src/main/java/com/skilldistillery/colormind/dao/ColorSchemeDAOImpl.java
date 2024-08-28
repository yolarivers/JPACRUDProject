package com.skilldistillery.colormind.dao;

import java.util.List;

import org.springframework.stereotype.Service;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.transaction.Transactional;

import com.skilldistillery.colormind.entities.Color;
import com.skilldistillery.colormind.entities.ColorScheme;

@Service
@Transactional
public class ColorSchemeDAOImpl implements ColorSchemeDAO {

    @PersistenceContext
    private EntityManager em;

    @Override
    public ColorScheme findById(int schemeId) {
        return em.find(ColorScheme.class, schemeId);
    }

    @Override
    public List<ColorScheme> findAll() {
        return em.createQuery("SELECT cs FROM ColorScheme cs", ColorScheme.class).getResultList();
    }

    @Override
    public List<Color> findAllColors() {
        return em.createQuery("SELECT c FROM Color c", Color.class).getResultList();
    }

    @Override
    public ColorScheme create(ColorScheme scheme, List<Integer> colorIds) {
        em.persist(scheme);
        for (Integer colorId : colorIds) {
            Color color = em.find(Color.class, colorId);
            scheme.addColor(color);
        }
        return scheme;
    }

    @Override
    public ColorScheme update(int schemeId, ColorScheme scheme, List<Integer> colorIds) {
        ColorScheme managedScheme = em.find(ColorScheme.class, schemeId);
        if (managedScheme != null) {
            managedScheme.setName(scheme.getName());
            managedScheme.setDescription(scheme.getDescription());
            managedScheme.getColors().clear();
            for (Integer colorId : colorIds) {
                Color color = em.find(Color.class, colorId);
                managedScheme.addColor(color);
            }
        }
        return managedScheme;
    }

    @Override
    public boolean deleteById(int schemeId) {
        ColorScheme scheme = em.find(ColorScheme.class, schemeId);
        if (scheme != null) {
            em.remove(scheme);
            return true;
        }
        return false;
    }
}
