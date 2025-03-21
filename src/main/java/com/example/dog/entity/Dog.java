package com.example.dog.entity;


public class Dog {
    private Long id;
    private String name;
    private String breed;

    // Constructores
    public Dog() {}

    public Dog(Long id, String name, String breed) {
        this.id = id;
        this.name = name;
        this.breed = breed;
    }

    // Getters y Setters
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBreed() {
        return breed;
    }

    public void setBreed(String breed) {
        this.breed = breed;
    }
}

