package com.skilldistillery.colormind.dao;

import java.util.List;

import org.springframework.stereotype.Service;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.transaction.Transactional;

import com.skilldistillery.colormind.entities.Color;

@Service
@Transactional
public class ColorMindDAOImpl implements ColorMindDAO {

    @PersistenceContext
    private EntityManager em;

    @Override
    public Color findById(int colorId) {
        return em.find(Color.class, colorId);
    }

    @Override
    public List<Color> findAll() {
        return em.createQuery("SELECT c FROM Color c", Color.class).getResultList();
    }

    @Override
    public Color create(Color newColor) {
        em.persist(newColor);
        return newColor;
    }

    @Override
    public Color update(int colorId, Color color) {
        Color managedColor = em.find(Color.class, colorId);
        if (managedColor != null) {
            managedColor.setColor(color.getColor());
            managedColor.setHexCode(color.getHexCode());
            managedColor.setRgbValue(color.getRgbValue());
            managedColor.setMeaning(color.getMeaning());
        }
        return managedColor;
    }

    @Override
    public boolean deleteById(int colorId) {
        Color color = em.find(Color.class, colorId);
        if (color != null) {
            em.remove(color);
            return true;
        }
        return false;
    }
}
