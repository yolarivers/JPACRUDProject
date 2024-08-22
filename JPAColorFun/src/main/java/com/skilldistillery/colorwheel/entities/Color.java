package com.skilldistillery.colorwheel.entities;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "color_wheel")
public class Color {

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private int id;

  private String name;
  private String meaning;

  @Column(name = "image_url")
  private String imageUrl;

 
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


  public String getMeaning() {
    return meaning;
  }

  public void setMeaning(String meaning) {
    this.meaning = meaning;
  }

  
  public String getImageUrl() {
    return imageUrl;
  }

  public void setImageUrl(String imageUrl) {
    this.imageUrl = imageUrl;
  }
}
