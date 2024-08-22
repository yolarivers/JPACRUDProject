package com.skilldistillery.colormind.services;

import java.util.List;
import com.skilldistillery.colormind.entities.Color;

public interface ColorService {
    Color findById(int id);
    List<Color> findAll();
    Color create(Color color);
    Color update(int id, Color color);
    boolean deleteById(int id);
}
