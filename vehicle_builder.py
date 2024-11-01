class Vehicle:
    def __init__(self):
        self.wheels = None
        self.color = None

    def __str__(self):
        return f"Vehicle with {self.wheels} wheels and {self.color} color."

class VehicleBuilder:
    def __init__(self):
        self.vehicle = Vehicle()

    def set_wheels(self, wheels):
        self.vehicle.wheels = wheels
        return self

    def set_color(self, color):
        self.vehicle.color = color
        return self

    def build(self):
        return self.vehicle
