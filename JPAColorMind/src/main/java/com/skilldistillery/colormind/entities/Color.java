package com.skilldistillery.colormind.entities;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.Table;

@Entity
@Table(name = "color")
public class Color {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    private String name;
    
    @Column(name="hex_code")  
    private String hexCode;
    
    @Column(name="rgb_value")
    private String rgbValue;
    
    private String meaning;

    @ManyToMany(mappedBy = "colors", fetch = FetchType.LAZY, cascade = { CascadeType.PERSIST, CascadeType.MERGE })
    private List<ColorScheme> colorSchemes = new ArrayList<>();

   

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getHexCode() {
        return hexCode;
    }

    public void setHexCode(String hexCode) {
        this.hexCode = hexCode;
    }

    public String getRgbValue() {
        return rgbValue;
    }

    public void setRgbValue(String rgbValue) {
        this.rgbValue = rgbValue;
    }

    public String getMeaning() {
        return meaning;
    }

    public void setMeaning(String meaning) {
        this.meaning = meaning;
    }

    public List<ColorScheme> getColorSchemes() {
        return colorSchemes;
    }

    public void setColorSchemes(List<ColorScheme> colorSchemes) {
        this.colorSchemes = colorSchemes;
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
        Color other = (Color) obj;
        return id == other.id;
    }

    @Override
    public String toString() {
        return "Color [id=" + id + ", name=" + name + ", hexCode=" + hexCode
                + ", rgbValue=" + rgbValue + ", meaning=" + meaning + "]";
    }
}
