# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
cities = [{name: 'Portland', country: 'USA'},
	      {name: 'London', country: 'England'},
	      {name: 'Seattle', country: 'USA'},
	      {name: 'New York', country: 'USA'},
	      {name: 'Paris', country: 'France'}]

cities.each do |city|
	City.create!(city)
end

buildings = [{name: 'Rose Garden', height: 140, city_id: 1},
             {name: 'Big Ben', height: 316, city_id: 2},
             {name: 'Space Needle', height: 604, city_id: 3},
             {name: 'Empire State Building', height: 1454, city_id: 4},
             {name: 'Eiffel Tower', height: 1063, city_id: 5}]

buildings.each do |building|
  Building.create!(building)
end