package com.skilldistillery.colormind.entities;

import java.util.Objects;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "color_scheme_color")
public class ColorSchemeColor {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @ManyToOne
    @JoinColumn(name = "color_scheme_id")
    private ColorScheme colorScheme;

    @ManyToOne
    @JoinColumn(name = "color_id")
    private Color color;

    private int position;

  
    public ColorSchemeColor() {
        super();
    }

    public ColorSchemeColor(ColorScheme colorScheme, Color color, int position) {
        this.colorScheme = colorScheme;
        this.color = color;
        this.position = position;
    }



    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public ColorScheme getColorScheme() {
        return colorScheme;
    }

    public void setColorScheme(ColorScheme colorScheme) {
        this.colorScheme = colorScheme;
    }

    public Color getColor() {
        return color;
    }

    public void setColor(Color color) {
        this.color = color;
    }

    public int getPosition() {
        return position;
    }

    public void setPosition(int position) {
        this.position = position;
    }

    

    @Override
    public int hashCode() {
        return Objects.hash(id);
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj)
            return true;
        if (obj == null || getClass() != obj.getClass())
            return false;
        ColorSchemeColor other = (ColorSchemeColor) obj;
        return id == other.id;
    }

   

    @Override
    public String toString() {
        return "ColorSchemeColor [id=" + id + ", colorScheme=" + colorScheme + ", color=" + color + ", position=" + position + "]";
    }
}
