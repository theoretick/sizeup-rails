# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Building.delete_all
City.delete_all

City.create([{name: 'Paris', country: 'France', id: '1'}])
City.create([{name: 'Los Angeles', country: 'USA', id: '2'}])
City.create([{name: 'Portland', country: 'USA', id: '3'}])

Building.create([{ name: 'Eiffel Tower', height: '100', city_id: '1'}])
Building.create([{ name: 'Tall Boy Tower', height: '350', city_id: '2'}])
Building.create([{ name: 'Beer Heights', height: '275', city_id: '3'}])