# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#voici des ajout manuel
course1 = Course.create!(title: "sex", description: "all about practice")
course2 = Course.create!(title: "bicycle", description: "all about pédale")

lesson1 = Lesson.new(title: "how to eat pussy", body: "you got hand, mouse, ears, and sometimes eyes, use them, combine them !", course_id: 1)
lesson1.save
lesson2 = Lesson.create!(title: "why we says loosing virginity", body: "everybody exactly know where it had gone !", course_id: 1)
lesson3= Lesson.new(title: "how to choose your bycicle", body: "all about money", course_id: 2)
lesson3.save
lesson4 = Lesson.create!(title: "gear does matter?", body: "all about pleasure", course_id: 2)


#et la la mitraillette
10.times do
  course = Course.create!(title: Faker::App.name, description: Faker::Device.platform)
end

30.times do
  lesson = Lesson.create!(title: Faker::FamilyGuy.character, body: Faker::NewGirl.quote, course_id: rand(1..12))
end
