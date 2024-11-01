# Creational Design Patterns

**Author:** Lupan Ovidiu FAF-223  
**Date:** November 1, 2024  

---

## Objectives

1. **Study and understand the Creational Design Patterns.**  
   Gain knowledge about various creational design patterns and their applications in software engineering.

2. **Choose a domain, define its main classes/models/entities, and choose the appropriate instantiation mechanisms.**  
   Identify a specific domain area to apply the design patterns effectively.

3. **Use some creational design patterns for object instantiation in a sample project.**  
   Implement at least three different design patterns in the chosen domain.

---

## Theory

In software engineering, **creational design patterns** are solutions that address object creation mechanisms. They aim to create objects in a manner suitable to the situation, minimizing design problems or added complexity. By optimizing, hiding, or controlling object creation, these patterns enhance code maintainability and readability.

### Common Creational Design Patterns

- **Singleton**: Ensures a class has only one instance and provides a global point of access to it.
- **Builder**: Allows for step-by-step construction of complex objects.
- **Prototype**: Enables creating new objects by copying an existing object.
- **Factory Method**: Defines an interface for creating an object but allows subclasses to alter the type of created objects.
- **Abstract Factory**: Provides an interface for creating families of related or dependent objects without specifying their concrete classes.

---

## Domain Area

For this project, we selected a **vehicle management system** as the domain area. The primary classes involved include:

- **Vehicle**: A base class representing a generic vehicle.
- **Car**: A class that inherits from Vehicle, representing cars.
- **Bike**: A class that inherits from Vehicle, representing bikes.
- **Truck**: A class that inherits from Vehicle, representing trucks.

---

## Implemented Design Patterns

The following creational design patterns have been implemented in this project:

1. **Singleton Pattern**: Used in `config_manager.py` to manage configuration settings.
2. **Factory Method Pattern**: Implemented in `vehicle_factory.py` to create different types of vehicles based on user input.
3. **Builder Pattern**: Used in `vehicle_builder.py` to construct complex vehicle objects step-by-step.
4. **Prototype Pattern**: Implemented in `vehicle_prototype.py` to create new vehicles by copying existing ones.

---

## Implementation

The implementation consists of several modules that interact with each other. Below are snippets from the codebase that demonstrate the design patterns.

### Config Manager (Singleton)
```python
class ConfigManager:
    _instance = None

    @staticmethod
    def get_instance():
        if ConfigManager._instance is None:
            ConfigManager._instance = ConfigManager()
        return ConfigManager._instance

class VehicleFactory:
    def create_vehicle(self, vehicle_type):
        if vehicle_type == "Car":
            return Car()
        elif vehicle_type == "Bike":
            return Bike()
        elif vehicle_type == "Truck":
            return Truck()


class VehicleBuilder:
    def __init__(self):
        self.vehicle = Vehicle()

    def set_type(self, vehicle_type):
        self.vehicle.type = vehicle_type



**## Conclusion**
This project successfully demonstrates the implementation of various Creational Design Patterns. The vehicle management system facilitates flexible and efficient creation of vehicle objects. By employing these design patterns, the code remains clean, maintainable, and scalable, which is essential for effective software development.
