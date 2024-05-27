# Seed Subjects
subjects = []
5.times do |n|
  subjects << Subject.create(name: "Subject #{n + 1}")
end

# Seed Students
students = []
10.times do |n|
  students << Student.create(name: "Student #{n + 1}")
end

# Seed Courses
courses_count = 10  # Number of courses you want to create

courses_count.times do
  subject = subjects.sample
  student = students.sample

  Course.create!(
    subject: subject,
    student: student
  )
end

# Example of Seeded Data
puts "Seeded Subjects:"
Subject.all.each do |subject|
  puts "ID: #{subject.id}, Name: #{subject.name}"
end

puts "\nSeeded Students:"
Student.all.each do |student|
  puts "ID: #{student.id}, Name: #{student.name}"
end

puts "\nSeeded Courses:"
Course.all.each do |course|
  puts "ID: #{course.id}, Subject ID: #{course.subject_id}, Student ID: #{course.student_id}"
end
