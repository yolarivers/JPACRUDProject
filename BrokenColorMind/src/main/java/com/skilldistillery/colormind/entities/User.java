package com.skilldistillery.colormind.entities;

import java.util.List;
import java.util.Objects;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

@Entity
@Table(name = "user")
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    private String username;
    private String password;
    private boolean enabled;
    private String role;

    @OneToMany(mappedBy = "user")
    private List<Color> colors;

    @OneToMany(mappedBy = "user")
    private List<ColorScheme> colorSchemes;

    @OneToMany(mappedBy = "user")
    private List<UserInteraction> userInteractions;

    // Getters and Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public boolean isEnabled() {
        return enabled;
    }

    public void setEnabled(boolean enabled) {
        this.enabled = enabled;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public List<Color> getColors() {
        return colors;
    }

    public void setColors(List<Color> colors) {
        this.colors = colors;
    }

    public List<ColorScheme> getColorSchemes() {
        return colorSchemes;
    }

    public void setColorSchemes(List<ColorScheme> colorSchemes) {
        this.colorSchemes = colorSchemes;
    }

    public List<UserInteraction> getUserInteractions() {
        return userInteractions;
    }

    public void setUserInteractions(List<UserInteraction> userInteractions) {
        this.userInteractions = userInteractions;
    }

    // Equals, HashCode, and ToString methods
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
        User other = (User) obj;
        return id == other.id;
    }

    @Override
    public String toString() {
        return "User [id=" + id + ", username=" + username + ", role=" + role + "]";
    }
}
