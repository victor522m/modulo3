package com.example.dog.entity;


public class Dog {
    private int id;
    private String name;
    private String breed;

    // Constructores
    public Dog() {}

    public Dog(int id, String name, String breed) {
        this.id = id;
        this.name = name;
        this.breed = breed;
    }
    public Dog( String name, String breed) {
        this.name = name;
        this.breed = breed;
    }


    // Getters y Setters
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

    public String getBreed() {
        return breed;
    }

    public void setBreed(String breed) {
        this.breed = breed;
    }
}

