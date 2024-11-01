# Creational Design Patterns

**Author:** Lupan Ovidiu FAF-223  

## Objectives
1. Study and understand the Creational Design Patterns.
2. Choose a domain, define its main classes/models/entities and choose the appropriate instantiation mechanisms.
3. Use some creational design patterns for object instantiation in a sample project.

## Theory
In software engineering, the creational design patterns are general solutions that deal with object creation, trying to create objects in a manner suitable to the situation. The basic form of object creation could result in design problems or added complexity to the design. Creational design patterns solve this problem by optimizing, hiding, or controlling the object creation. Some examples of this kind of design patterns are: Singleton, Builder, Prototype, Object Pooling, Factory Method, and Abstract Factory.

## Domain Area
For this project, we chose a vehicle management system as the domain area. The main classes involved are: Vehicle (a base class representing a generic vehicle), Car (a class that inherits from Vehicle), Bike (a class that inherits from Vehicle), and Truck (a class that inherits from Vehicle).

## Implemented Design Patterns
The following creational design patterns have been implemented in this project: Singleton Pattern (used in `config_manager.py` to manage configuration settings), Factory Method Pattern (implemented in `vehicle_factory.py` to create different types of vehicles based on input), Builder Pattern (used in `vehicle_builder.py` to construct complex vehicle objects step by step), and Prototype Pattern (implemented in `vehicle_prototype.py` to create new vehicles by copying existing ones).

## Implementation
The implementation consists of several modules that interact with each other. Below are some snippets from the codebase. **Config Manager (Singleton)**: `class ConfigManager: _instance = None @staticmethod def get_instance(): if ConfigManager._instance is None: ConfigManager._instance = ConfigManager() return ConfigManager._instance`. **Vehicle Factory (Factory Method)**: `class VehicleFactory: def create_vehicle(self, vehicle_type): if vehicle_type == "Car": return Car() elif vehicle_type == "Bike": return Bike() elif vehicle_type == "Truck": return Truck()`. **Vehicle Builder**: `class VehicleBuilder: def __init__(self): self.vehicle = Vehicle() def set_type(self, vehicle_type): self.vehicle.type = vehicle_type`.

## Conclusions
This project successfully demonstrates the implementation of various Creational Design Patterns. The vehicle management system allows for flexible and efficient creation of vehicle objects. By using these design patterns, the code remains clean and maintainable, which is essential for scalable software development.
