
todoapp = []

option1 = "to add an item"
option2 = "to delete an item at index"
option3 = "to remove the last item"
option4 = "to sort the list"
option5 = "To print the list"
option6 = "Exit the app"

todoapp.append(option1)
todoapp.append(option2)
todoapp.append(option3)
todoapp.append(option4)
todoapp.append(option5)
todoapp.append(option6)


choice = int(input("Enter your choice: "))

if choice == 1:
    todoapp.append("Added Successfully")

elif choice == 2:
    todoapp.pop(0)
    print("Deleted Successfully")

elif choice == 3:
    todoapp.pop()

elif choice == 4:
    todoapp.sort()

elif choice == 5:
    print(todoapp)

elif choice == 6:
    print("Exiting the app")

else:
    print("Invalid choice")
