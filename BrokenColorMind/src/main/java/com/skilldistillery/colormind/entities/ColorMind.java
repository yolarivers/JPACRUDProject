package com.skilldistillery.colormind.entities;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "color_mind")
public class ColorMind {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    private String color;
    private String hexCode;
    private String rgbValue;
    private String complementaryColor;
    private String analogousColors;
    private String imageUrl;
    private String meaning;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
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

    public String getComplementaryColor() {
        return complementaryColor;
    }

    public void setComplementaryColor(String complementaryColor) {
        this.complementaryColor = complementaryColor;
    }

    public String getAnalogousColors() {
        return analogousColors;
    }

    public void setAnalogousColors(String analogousColors) {
        this.analogousColors = analogousColors;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }

    public String getMeaning() {
        return meaning;
    }

    public void setMeaning(String meaning) {
        this.meaning = meaning;
    }

    @Override
    public String toString() {
        return "Color [id=" + id + ", color=" + color + ", hexCode=" + hexCode + ", rgbValue=" + rgbValue
                + ", complementaryColor=" + complementaryColor + ", analogousColors=" + analogousColors
                + ", imageUrl=" + imageUrl + ", meaning=" + meaning + "]";
    }
}
