# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
City.delete_all
Building.delete_all

City.create!({name: 'Portland', country: 'USA', id: '1'})
City.create!({name: 'London', country: 'England', id: '2'})
City.create!({name: 'Seattle', country: 'USA', id: '3'})
City.create!({name: 'New York', country: 'USA', id: '4'})
City.create!({name: 'Paris', country: 'France', id: '5'})


Building.create!({name: 'Rose Garden', height: 140, city_id: '1'})
Building.create!({name: 'Big Ben', height: 316, city_id: '2'})
Building.create!({name: 'Space Needle', height: 604, city_id: '3'})
Building.create!({name: 'Empire State Building', height: 1454, city_id: '4'})
Building.create!({name: 'Eiffel Tower', height: 1063, city_id: '5'})