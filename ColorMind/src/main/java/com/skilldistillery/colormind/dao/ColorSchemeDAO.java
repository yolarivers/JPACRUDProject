package com.skilldistillery.colormind.dao;

import java.util.List;

import com.skilldistillery.colormind.entities.Color;
import com.skilldistillery.colormind.entities.ColorScheme;

public interface ColorSchemeDAO {
    ColorScheme findById(int schemeId);
    List<ColorScheme> findAll();
    List<Color> findAllColors();
    ColorScheme create(ColorScheme scheme, List<Integer> colorIds);
    ColorScheme update(int schemeId, ColorScheme scheme, List<Integer> colorIds);
    boolean deleteById(int schemeId);
}
