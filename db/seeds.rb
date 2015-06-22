# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

%w(steve josh rachel jeff jorge).each do |name|
  Author.create(name: name.capitalize, phone_number: "(123) 456-7890", password: "password", email: "#{name}@turing.io")
end

Tag.generate_samples(10)
Article.generate_samples(50)
