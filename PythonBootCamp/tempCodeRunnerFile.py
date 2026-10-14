students= {"Raj","Kumar","Shiv","Aftab"}
target_student = "Rahul"
exists = target_student in students
print("Does {target_student} exist in the set? {exists}")
if not exists:
    students.add(target_student)
    print("Added {target_student}. Updated set: {students}")
else:
    print("{target_student} is already in the set. Current set: {students}")