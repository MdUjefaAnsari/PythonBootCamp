newFile = open("diary.txt", "w")
newFile.write("I like the clear doubt in the session.\n")
newFile.write("I like the interactive practice.\n")
newFile.write("I don't like timing 2 hours.\n")
newFile.close()
newFile = open("diary.txt", "r")
print(file.read())

file.close()