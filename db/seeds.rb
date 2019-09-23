# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Student.destroy_all
Course.destroy_all
Enrollment.destroy_all

s1 = Student.create(name: "Student 1", age: 14)
s2 = Student.create(name: "Student 2", age: 17)

c1 = Course.create(name: "Math 101", subject: "Math",  teacher_name: "Einstein")
c2 = Course.create(name: "Coding 101", subject: "Science", teacher_name: "Yo")
c3 = Course.create(name: "Chemisty", subject: "Literature", teacher_name: "Super Science Teacher")

Enrollment.create(student_id: s1.id, course_id: c1.id)
Enrollment.create(student_id: s2.id, course_id: c1.id)
Enrollment.create(student_id: s1.id, course_id: c2.id)
Enrollment.create(student_id: s2.id, course_id: c3.id)

puts 'seeded'