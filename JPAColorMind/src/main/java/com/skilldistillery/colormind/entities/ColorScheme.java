package com.skilldistillery.colormind.entities;

import java.time.LocalDateTime;
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
import jakarta.persistence.JoinColumn;
import jakarta.persistence.JoinTable;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "color_scheme")
public class ColorScheme {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    private String name;
    
    private String description;

    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;

    @ManyToMany(fetch = FetchType.LAZY, cascade = { CascadeType.PERSIST, CascadeType.MERGE })
    @JoinTable(name = "color_scheme_color", 
               joinColumns = @JoinColumn(name = "color_scheme_id"), 
               inverseJoinColumns = @JoinColumn(name = "color_id"))
    private List<Color> colors = new ArrayList<>();  // List initialized here

    @Column(name = "created_date", nullable = false)
    private LocalDateTime createdDate;

    @Column(name = "updated_date", nullable = false)
    private LocalDateTime updatedDate;

  
    public ColorScheme() {
        this.colors = new ArrayList<>();  // Ensures list is initialized
    }

    public ColorScheme(String name, String description, User user, List<Color> colors, LocalDateTime createdDate, LocalDateTime updatedDate) {
        this.name = name;
        this.description = description;
        this.user = user;
        this.colors = colors != null ? colors : new ArrayList<>();  // Ensures list is initialized
        this.createdDate = createdDate;
        this.updatedDate = updatedDate;
    }

   
    public void addColor(Color color) {
        colors.add(color);
        color.getColorSchemes().add(this);
    }

    public void removeColor(Color color) {
        if (colors != null && colors.contains(color)) {
            colors.remove(color);
            if (color.getColorSchemes() != null) {
                color.getColorSchemes().remove(this);
            }
        }
    }


  

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

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public List<Color> getColors() {
        return colors;
    }

    public void setColors(List<Color> colors) {
        this.colors = colors;
    }

    public LocalDateTime getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(LocalDateTime createdDate) {
        this.createdDate = createdDate;
    }

    public LocalDateTime getUpdatedDate() {
        return updatedDate;
    }

    public void setUpdatedDate(LocalDateTime updatedDate) {
        this.updatedDate = updatedDate;
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
        ColorScheme other = (ColorScheme) obj;
        return id == other.id;
    }


    @Override
    public String toString() {
        return "ColorScheme [id=" + id + ", name=" + name + ", description=" + description + 
               ", user=" + user + ", colors=" + colors + 
               ", createdDate=" + createdDate + ", updatedDate=" + updatedDate + "]";
    }
}
