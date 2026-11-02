class Car:
    def __init__(self, brand, speed=0):
        self.brand = brand
        self.speed = speed

    def accelerate(self, amount):
        self.speed += amount
        print(f"Accelerated: Current speed is {self.speed}")

    def brake(self, amount):
        self.speed = max(0, self.speed - amount)
        print(f"Braked: Current speed is {self.speed}")
