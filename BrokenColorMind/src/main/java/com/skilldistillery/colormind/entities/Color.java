package com.skilldistillery.colormind.entities;

import java.util.List;
import java.util.Objects;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.Table;

@Entity
@Table(name = "color")
public class Color {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    private String color;

    @Column(name = "hex_code")
    private String hexCode;

    @Column(name = "rgb_value")
    private String rgbValue;

    private String meaning;

    // Example mapping to a User entity (if a user creates or owns the color)
    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;

    // Example mapping for analogous colors
    @OneToMany(mappedBy = "color")
    private List<AnalogousColor> analogousColors;

    @OneToMany(mappedBy = "analogousColor")
    private List<AnalogousColor> analogousToColors;

    // Example mapping to color schemes
    @ManyToMany(mappedBy = "colors")
    private List<ColorScheme> colorSchemes;

    // Getters and Setters
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

    public String getMeaning() {
        return meaning;
    }

    public void setMeaning(String meaning) {
        this.meaning = meaning;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public List<AnalogousColor> getAnalogousColors() {
        return analogousColors;
    }

    public void setAnalogousColors(List<AnalogousColor> analogousColors) {
        this.analogousColors = analogousColors;
    }

    public List<AnalogousColor> getAnalogousToColors() {
        return analogousToColors;
    }

    public void setAnalogousToColors(List<AnalogousColor> analogousToColors) {
        this.analogousToColors = analogousToColors;
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
        if (obj == null)
            return false;
        if (getClass() != obj.getClass())
            return false;
        Color other = (Color) obj;
        return id == other.id;
    }

    @Override
    public String toString() {
        StringBuilder builder = new StringBuilder();
        builder.append("Color [id=").append(id).append(", color=").append(color)
                .append(", hexCode=").append(hexCode)
                .append(", rgbValue=").append(rgbValue)
                .append(", meaning=").append(meaning).append("]");
        return builder.toString();
    }
}
