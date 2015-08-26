# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
player = Player.create(name: "Noon Dude")

club = Club.create(name: "Waterfall City")
club_2 = Club.create(name: "Whatever City", category: "Cool Place", cool_factor: "HIGH")

player.clubs << club
player.clubs << club_2
