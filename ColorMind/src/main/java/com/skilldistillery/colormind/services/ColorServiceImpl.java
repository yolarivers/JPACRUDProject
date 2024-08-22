package com.skilldistillery.colormind.services;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.skilldistillery.colormind.dao.ColorDAO;
import com.skilldistillery.colormind.entities.Color;

@Service
public class ColorServiceImpl implements ColorService {

    @Autowired
    private ColorDAO colorDao;

    @Override
    public Color findById(int id) {
        return colorDao.findById(id);
    }

    @Override
    public List<Color> findAll() {
        return colorDao.findAll();
    }

    @Override
    public Color create(Color color) {
        return colorDao.create(color);
    }

    @Override
    public Color update(int id, Color color) {
        return colorDao.update(id, color);
    }

    @Override
    public boolean deleteById(int id) {
        return colorDao.deleteById(id);
    }
}
