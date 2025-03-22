package com.example.dog.rest;



import org.springframework.web.bind.annotation.*;

import com.example.dog.entity.Dog;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

@RestController
@RequestMapping("/api/dogs")
public class DogRestController {
    

    private final List<Dog> dogs = new ArrayList<>();  
    private final AtomicInteger counter = new AtomicInteger(1); 
    
    public DogRestController() {
        // Inicializando la lista con 10 perros predefinidos
        dogs.add(new Dog(counter.getAndIncrement(), "Aquiles", "French Bulldog"));
        dogs.add(new Dog(counter.getAndIncrement(), "Buddy", "Golden Retriever"));
        dogs.add(new Dog(counter.getAndIncrement(), "Bella", "Labrador"));
        dogs.add(new Dog(counter.getAndIncrement(), "Charlie", "Poodle"));
        dogs.add(new Dog(counter.getAndIncrement(), "Max", "Beagle"));
        dogs.add(new Dog(counter.getAndIncrement(), "Lucy", "German Shepherd"));
        dogs.add(new Dog(counter.getAndIncrement(), "Daisy", "Bulldog"));
        dogs.add(new Dog(counter.getAndIncrement(), "Rocky", "Boxer"));
        dogs.add(new Dog(counter.getAndIncrement(), "Molly", "Cocker Spaniel"));
        dogs.add(new Dog(counter.getAndIncrement(), "Jack", "Border Collie"));
        dogs.add(new Dog(counter.getAndIncrement(), "Sadie", "Dalmatian"));
    }
    
    @GetMapping
    public List<Dog> getAllDogs() {
        return dogs;
    }

    @PostMapping
    public Dog addDog(@RequestBody Dog dog) {
        dog.setId(counter.getAndIncrement());  
        dogs.add(dog);
        return dog;
    }
}

