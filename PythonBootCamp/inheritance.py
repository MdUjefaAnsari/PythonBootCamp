class Person:
    def __init__(self, name, age):
        self.name = name
        self.age = age
        
    def intro(self):
        print("My Name is: ",self.name,"Age:",self.age)

class Student(Person):
    pass

student = Student("Ujefa", 24)
student.intro()
