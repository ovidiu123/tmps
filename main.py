from config_manager import ConfigurationManager
from vehicle_factory import VehicleFactory
from vehicle_builder import VehicleBuilder
from vehicle_prototype import VehiclePrototype

def main():
    # Singleton Pattern Example
    config1 = ConfigurationManager()
    config1.set_config("app_name", "SimpleVehicleApp")
    config2 = ConfigurationManager()
    print(f"Singleton: {config2.get_config('app_name')}")  # Outputs: SimpleVehicleApp

    # Factory Method Pattern Example
    factory = VehicleFactory()
    car = factory.get_vehicle("car")
    bike = factory.get_vehicle("bike")
    print(f"Factory: {car.describe()}")  # Outputs: Car created
    print(f"Factory: {bike.describe()}")  # Outputs: Bike created

    # Builder Pattern Example
    builder = VehicleBuilder()
    vehicle = builder.set_color("red").set_wheels(4).build()
    print(f"Builder: {vehicle}")  # Outputs: Vehicle with 4 wheels and red color

    # Prototype Pattern Example
    original = VehiclePrototype("Truck", "Blue")
    clone = original.clone()
    clone.color = "Green"
    print(f"Prototype: {original}")  # Outputs: Truck, Blue
    print(f"Prototype: {clone}")     # Outputs: Truck, Green

if __name__ == "__main__":
    main()
