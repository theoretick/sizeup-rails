# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
City.delete_all
Building.delete_all

cities = [{name: 'Portland', country: 'USA', id: '1'},
          {name: 'London', country: 'England', id: '2'},
          {name: 'Seattle', country: 'USA', id: '3'},
          {name: 'New York', country: 'USA', id: '4'},
          {name: 'Paris', country: 'France', id: '5'}]

cities.each do |city|
  City.create!(city)
end

buildings = [{name: 'Rose Garden', height: 140, city_id: '1', zipcode: '97227'},
             {name: 'Big Ben', height: 316, city_id: '2', zipcode: '95032'},
             {name: 'Space Needle', height: 604, city_id: '3', zipcode: '11206'},
             {name: 'Empire State Building', height: 1454, city_id: '4', zipcode: '90210'},
             {name: 'Eiffel Tower', height: 1063, city_id: '5', zipcode: '12345'}]

buildings.each do |building|
  Building.create!(building)
end