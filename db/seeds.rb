# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Users
5.times do
	User.create(
		email: Faker::Internet.email,
		firstname: Faker::Name.first_name,
		lastname: Faker::Name.last_name,
		password: "12345678",
		password_confirmation: "12345678"
	)
end

#Admin
User.create(
	email: "admin@workshops.com",
	firstname: Faker::Name.first_name,
	lastname: Faker::Name.last_name,
	password: "12345678",
	password_confirmation: "12345678",
	admin: true
)