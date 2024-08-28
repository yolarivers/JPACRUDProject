package com.skilldistillery.colormind.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.skilldistillery.colormind.data.ColorSchemeDAO;
import com.skilldistillery.colormind.entities.Color;
import com.skilldistillery.colormind.entities.ColorScheme;

@Service
@Transactional
public class ColorSchemeServiceImpl implements ColorSchemeService {

    @Autowired
    private ColorSchemeDAO schemeDao;

    @Override
    public ColorScheme findById(int schemeId) {
        return schemeDao.findById(schemeId);
    }

    @Override
    public List<ColorScheme> findAll() {
        return schemeDao.findAll();
    }

    @Override
    public List<Color> findAllColors() {
        return schemeDao.findAllColors();
    }

    @Override
    public ColorScheme create(ColorScheme scheme, List<Integer> colorIds) {
        return schemeDao.create(scheme, colorIds);
    }

    @Override
    public ColorScheme update(int schemeId, ColorScheme scheme, List<Integer> colorIds) {
        return schemeDao.update(schemeId, scheme, colorIds);
    }

    @Override
    public boolean deleteById(int schemeId) {
        return schemeDao.deleteById(schemeId);
    }
}
