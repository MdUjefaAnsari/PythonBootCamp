class Pen:
    def write(self):
        print("Writing cleanly with a ballpoint pen.")

class Pencil:
    def write(self):
        print("Sketching smoothly with a graphite pencil.")

class Marker:
    def write(self):
        print("Drawing boldly with a permanent marker.")

# Creating instances and storing them in a list
writing_instruments = [Pen(), Pencil(), Marker()]

# Looping through the list to trigger polymorphism
for instrument in writing_instruments:
    instrument.write()
