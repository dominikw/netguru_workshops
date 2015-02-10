# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Users
users = []
5.times do
	users << User.create(
		email: Faker::Internet.email,
		firstname: Faker::Name.first_name,
		lastname: Faker::Name.last_name,
		password: "12345678",
		password_confirmation: "12345678"
	)
end

#Admin
admin = User.create(
	email: "admin@workshops.com",
	firstname: Faker::Name.first_name,
	lastname: Faker::Name.last_name,
	password: "12345678",
	password_confirmation: "12345678",
	admin: true
)

users << admin

#Categories
summer = Category.create(name: "Summer")
winter = Category.create(name: "Winter")

#Products
rollerblade = Product.create(
								title: "Rollerblade Macroblade",
								description: "Recreational skates at the highest level, quality components bring a faster smoother ride.",
								price: 199,
								category: summer,
								user: admin
							)

ski = 	Product.create(
					title: "Rossignol Radical 9SL",
					description: "The Radical 9SL Slant Nose Ti is a full-throttle, fall line slalom ski for technical and race league skiers.",
					price: 849,
					category: winter,
					user: admin
				)

snowboard = 	Product.create(
								title: "Burton Process",
								description: "The Burton Process is kind of like the Burton Custom with lowered the tech to fit a lower budget.",
								price: 729,
								category: winter,
								user: users[0]
							)

products = []
products << rollerblade
products << ski
products << snowboard

15.times do
	Review.create(
 						content: Faker::Lorem.sentence,
 						rating: rand(1..5),
 						product: products[rand(0..2)],
 						user: users[rand(0..5)]
					)
end
