from random import randrange
die1 = randrange(1, 6)
die2 = randrange(1, 6)
total = die1 + die2
print("First roll: ",die1)
print("Second roll:",die2)
print("Total:",total)

if total == 12:
    print("Jackpot!")