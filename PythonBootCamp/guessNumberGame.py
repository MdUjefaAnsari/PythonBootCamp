# import random

# computer_number = random.randint(1, 5)

# for i in range(1,4):
#    my_number = int(input("Guess a number from 1 to 5: "))
#    if computer_number == my_number:
#     print("You guessed correctly! You win!")
#     break
#    else:
#     print("Computer wins!")
  
# print("Computer number:", computer_number)



list = [10, 50, -5, 75]
count=0
sum=0
for i in list:
        count+=1
        if i<0:
              continue
        sum += i
       
print(count)
print(sum)