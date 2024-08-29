package com.skilldistillery.colormind.services;

import java.util.List;

import com.skilldistillery.colormind.entities.Color;

public interface ColorMindService {
    Color findById(int colorId);
    List<Color> findAll();
    Color create(Color newColor);
    Color update(int colorId, Color color);
    boolean deleteById(int colorId);
}
