package com.skilldistillery.colormind.entities;

import java.util.Objects;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity

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

	public Color() {
		super();
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

	public void setName(String color) {
		this.name = color;
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
		builder.append("Color [id=").append(id).append(", name=").append(name).append(", hexCode=").append(hexCode)
				.append(", rgbValue=").append(rgbValue).append(", meaning=").append(meaning).append("]");
		return builder.toString();
	}

    
   
}
