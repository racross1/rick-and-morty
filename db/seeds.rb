# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Item.create(name: "meseeks box", success_rate: 2)
Item.create(name: "portal gun", success_rate: 4)
Adventure.create(location: "dimension c-137", description: "biggest hiest in the dimension broh", pass: "succesful heist", fail: "failed heist", item: Item.last)
Adventure.create(location: "dimension c-137", description: "Find the crystals and get out", pass: "found crystals", fail: "you died broh", item: Item.first)
Adventure.create(location: "dimension c-137", description: "Save the planet from the talking heads in the sky by coming up with a song", pass: "got schwifty", fail: "you died broh", item: Item.first)