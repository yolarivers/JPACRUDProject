package com.skilldistillery.colormind.entities;

import java.time.LocalDateTime;
import java.util.Objects;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "user_color_interactions")
public class UserColorInteraction {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;

    @ManyToOne
    @JoinColumn(name = "color_id")
    private Color color;

    @Column(name = "interaction_type")
    private String interactionType;

    private LocalDateTime timestamp;

  
    public UserColorInteraction() {
        super();
    }

    public UserColorInteraction(User user, Color color, String interactionType, LocalDateTime timestamp) {
        this.user = user;
        this.color = color;
        this.interactionType = interactionType;
        this.timestamp = timestamp;
    }

 

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Color getColor() {
        return color;
    }

    public void setColor(Color color) {
        this.color = color;
    }

    public String getInteractionType() {
        return interactionType;
    }

    public void setInteractionType(String interactionType) {
        this.interactionType = interactionType;
    }

    public LocalDateTime getTimestamp() {
        return timestamp;
    }

    public void setTimestamp(LocalDateTime timestamp) {
        this.timestamp = timestamp;
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
        UserColorInteraction other = (UserColorInteraction) obj;
        return id == other.id;
    }

   

    @Override
    public String toString() {
        return "UserColorInteraction [id=" + id + ", user=" + user + ", color=" + color 
               + ", interactionType=" + interactionType + ", timestamp=" + timestamp + "]";
    }
}
