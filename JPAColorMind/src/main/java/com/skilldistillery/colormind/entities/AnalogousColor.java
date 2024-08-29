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
@Table(name = "analogous_colors")
public class AnalogousColor {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @ManyToOne
    @JoinColumn(name = "color_id")
    private Color color;

    @ManyToOne
    @JoinColumn(name = "analogous_color_id")
    private Color analogousColor;

  
    public AnalogousColor() {
        super();
    }

    public AnalogousColor(Color color, Color analogousColor) {
        this.color = color;
        this.analogousColor = analogousColor;
    }

  

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Color getColor() {
        return color;
    }

    public void setColor(Color color) {
        this.color = color;
    }

    public Color getAnalogousColor() {
        return analogousColor;
    }

    public void setAnalogousColor(Color analogousColor) {
        this.analogousColor = analogousColor;
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
        AnalogousColor other = (AnalogousColor) obj;
        return id == other.id;
    }

  

    @Override
    public String toString() {
        return "AnalogousColor [id=" + id + ", color=" + color + ", analogousColor=" + analogousColor + "]";
    }
}
