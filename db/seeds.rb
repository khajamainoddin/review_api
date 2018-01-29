# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


100.times do
	 author = Author.new(name: Faker::Book.author, 
	 	bio: Faker::Internet.email, 
	 	pic: Faker::Avatar.image, 
	 	academics: Faker::Job.education_level, 
	 	awards: Faker::DrWho.character )  


5.times do

  
  author.books << Book.new(title: Faker::Book.title,
		 short_des: Faker::Hipster.sentence(3, true),
		 long_des: Faker::Hipster.paragraph,
		 chapter_index: Faker::Number.between(1, 10),
		 published: Faker::Date.backward,
		 genre: Faker::Book.genre)

	   author.save

end


      
 end
