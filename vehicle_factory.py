class Vehicle:
    def describe(self):
        pass

class Car(Vehicle):
    def describe(self):
        return "Car created"

class Bike(Vehicle):
    def describe(self):
        return "Bike created"

class VehicleFactory:
    def get_vehicle(self, vehicle_type):
        if vehicle_type == "car":
            return Car()
        elif vehicle_type == "bike":
            return Bike()
        return None
