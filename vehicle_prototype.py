import copy

class VehiclePrototype:
    def __init__(self, model, color):
        self.model = model
        self.color = color

    def clone(self):
        return copy.deepcopy(self)

    def __str__(self):
        return f"{self.model}, {self.color}"
