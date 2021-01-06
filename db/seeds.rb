# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Item.destroy_all
Adventure.destroy_all
Quest.destroy_all 
Rick.destroy_all 
Morty.destroy_all

i1 = Item.create(name: "meseeks box", success_rate: 2)
i2 = Item.create(name: "portal gun", success_rate: 4)
i3 = Item.create(name: "morty's spellbook", success_rate: 0)
i4 = Item.create(name: "microverse battery", success_rate: 4)
i5 = Item.create(name: "plumbus", success_rate: 3)
i6 = Item.create(name: "eyeholes", success_rate: 1 )

Adventure.create(name: "You S.O.B I'm in", location: "dimension c-137", description: "biggest hiest in the dimension broh", pass: "succesful heist", fail: "failed heist", item: i1.id)
Adventure.create(name: "Get Those Crystals", location: "dimension c-137", description: "Find the crystals and get out", pass: "found crystals", fail: "you died broh", item: i2.id)
Adventure.create(name: "Show Us What U Got!", location: "dimension c-137", description: "Save the planet from the talking heads in the sky by coming up with a song", pass: "got schwifty", fail: "you died broh", item: i1.id)

Rick.create(name: "Pickle Rick", attitude: "Insane", species: "pickle")
Rick.create(name: "Fascist Wasp Rick", attitude: "Kind", species: "Wasp")
Rick.create(name: "Toxic Rick", attitude: "Toxic", species: "Human")

Morty.create(name: "Toxic Morty", attitude: "afraid", species: "human")
Morty.create(name: "President Morty", attitude: "Serious", species: "Human")

puts "Done"
