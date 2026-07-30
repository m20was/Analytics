# Java OOPs Introduction

**Object-Oriented Programming (OOP)** is a paradigm organized around **objects** (data/attributes) and **methods** (actions/behavior).

---

# Classes and Objects in Java

- **Class:** A blueprint or template for creating objects.
- **Object:** An instance of a class containing actual values.

### Modern Java 25 Code Example:
```java
// Class Blueprint
class Car {
    String model;
    int year;

    void displayDetails() {
        println("Car: " + model + " (" + year + ")");
    }
}

void main() {
    // Instantiating Object with var
    var myCar = new Car();
    myCar.model = "Tesla Model 3";
    myCar.year = 2025;

    myCar.displayDetails();
}
```

---

# Method Overloading

Multiple methods in the same class sharing the **same name** but having **different parameter lists** (type or number of parameters).

### Modern Java 25 Code Example:
```java
int add(int a, int b) { return a + b; }
double add(double a, double b) { return a + b; }

void main() {
    println(add(5, 10));       // Calls int version (15)
    println(add(2.5, 3.5));   // Calls double version (6.0)
}
```

---

# Java Constructors & `this` Keyword

A **Constructor** is a special method called automatically when an object is instantiated. The `this` keyword refers to the current object instance.

### Modern Java 25 Code Example:
```java
class Student {
    String name;
    int age;

    // Parameterized Constructor
    Student(String name, int age) {
        this.name = name; // 'this' resolves naming ambiguity
        this.age = age;
    }
}

void main() {
    var s1 = new Student("Sara", 21);
    println("Student: " + s1.name + ", Age: " + s1.age);
}
```

---

# Java Inheritance (`extends`), `super`, & `final`

**Inheritance** allows a child/subclass to inherit fields and methods from a parent/superclass.

- `super`: Refers to the immediate parent class object/constructor.
- `final`: Prevents method overriding or class inheritance.

### Modern Java 25 Code Example:
```java
// Parent Class
class Animal {
    void makeSound() {
        println("Animal makes a sound");
    }
}

// Child Class inheriting Parent
class Dog extends Animal {
    @Override
    void makeSound() {
        super.makeSound(); // Call parent method
        println("Dog barks");
    }
}

void main() {
    var myDog = new Dog();
    myDog.makeSound();
}
```
