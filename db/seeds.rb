# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(name:  "Sam Langenfeld",
             email: "samlangenfeld@gmail.com",
             password:              "password",
             password_confirmation: "password",
             admin: true,
             activated: true,
             activated_at: Time.zone.now)

User.create!(name:  "Example User",
             email: "example@railstutorial.org",
             password:              "password",
             password_confirmation: "password",
             admin: true,
             activated: true,
             activated_at: Time.zone.now)


6.times do |n|
  name  = Faker::RickAndMorty.unique.character
  email = name.split("")
  email= email.join("")
  email = "#{email.gsub(/[^0-9A-Za-z]/, '')}@RickAndMorty.org"
  puts email
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password,
               activated: true,
               activated_at: Time.zone.now)
end

6.times do |n|
  name  = Faker::HarryPotter.unique.character
  email = name.split("")
  email= email.join("")
  email = "#{email.gsub(/[^0-9A-Za-z]/, '')}@HarryPotter.org"
  puts email
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password,
               activated: true,
               activated_at: Time.zone.now)
end

6.times do |n|
  name  = Faker::Friends.unique.character
  email = name.split("")
  email= email.join("")
  email = "#{email.gsub(/[^0-9A-Za-z]/, '')}@Friends.org"
  puts email
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password,
               activated: true,
               activated_at: Time.zone.now)
end


#microposts
users= User.order(:created_at).offset(2).take(6)
50.times do
#  content = Faker::RickAndMorty.quote.truncate(140)
  users.each {|user| user.microposts.create!(content: Faker::RickAndMorty.quote.truncate(140))}
end

users= User.order(:created_at).offset(8).take(6)
50.times do
#  content = Faker::RickAndMorty.quote.truncate(140)
  users.each {|user| user.microposts.create!(content: Faker::HarryPotter.quote.truncate(140))}
end

users= User.order(:created_at).offset(14).take(6)
50.times do
#  content = Faker::RickAndMorty.quote.truncate(140)
  users.each {|user| user.microposts.create!(content: Faker::Friends.quote.truncate(140))}
end

#Following relationships
users= User.all
user = users.first
following= users[2..50]
followers = users [3..40]
following.each {|followed| user.follow(followed)}
followers.each {|follower| follower.follow(user)}