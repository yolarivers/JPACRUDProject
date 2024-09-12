package com.skilldistillery.colormind.dao;

import java.util.List;

import com.skilldistillery.colormind.entities.Palette;

public interface PaletteDAO {

    Palette createPalette(Palette palette);

    Palette findPaletteById(int id);

    List<Palette> findAllPalettesByUser(int userId);

    boolean deletePaletteById(int id);
}
