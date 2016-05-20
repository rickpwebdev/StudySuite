# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Study.create! ( study_name: "Study name",
	fund_code: "456789",
	expiration_date: 05/17/2017,
	enrollment: "57",
	target: "89",
	crc: "Mandy Marion",
	data_system: "Access",
	activity_code: 2)

37.times do |i| 
	 study_name= Faker::Name.name
					fund_code= Faker::Code.isbn
					expiration_date= Faker::Date.forward(120)
					enrollment = Faker::Number.number(4)
					target= Faker::Number.number(3)
					crc= Faker::Name.name
					data_system= Faker::App.name
					
	Study.create!(study_name: name,
					fund_code: code,
					expiration_date: date,
					enrollment: number,
					target: number,
					crc: name,
					data_system: app)				

end