# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Item.destroy_all
# Adventure.destroy_all
# Quest.destroy_all 
# Rick.destroy_all 
# Morty.destroy_all

i1 = Item.create(name: "Meseeks Box", success_rate: 2)
i2 = Item.create(name: "Portal Gun", success_rate: 4)
i3 = Item.create(name: "Morty's Spellbook", success_rate: -1)
i4 = Item.create(name: "Microverse Battery", success_rate: 4)
i5 = Item.create(name: "Plumbus", success_rate: 3)
i6 = Item.create(name: "Eyeholes", success_rate: 1)
i7 = Item.create(name: "Dream Inceptor", success_rate: 2)
i8 = Item.create(name: "Series 9000 Brainalyzer", success_rate: 1)
i9 = Item.create(name: "Ionic Defibulizer", success_rate: -2)
i10 = Item.create(name: "Courier Flap", success_rate: 0)
i11 = Item.create(name: "Broken Leg Serum", success_rate: 0)
i12 = Item.create(name: "Interdimensional Goggles", success_rate: 1)
i13 = Item.create(name: "Time Stabilizing Collar", success_rate: 2)
i14 = Item.create(name: "Combat Suit", success_rate: 3)
i15 = Item.create(name: "Cognition Amplifier", success_rate: 2)
i16 = Item.create(name: "Space Cruiser", success_rate: 3)
i17 = Item.create(name: "Butter Robot", success_rate: 3)
i18 = Item.create(name: "Gwendolyn", success_rate: 1)
i19 = Item.create(name: "Schmeckel", success_rate: 1)
i20 = Item.create(name: "Mega Seeds", success_rate: 2)
i21 = Item.create(name: "Kalaxian Crystals", success_rate: 3)

Adventure.create(name: "You S.O.B I'm in", location: "Dimension C-137", description: "Plan the biggest hiest in the dimension broh. This is not a joke and it will get wild.", pass: "The heist was successful broh.", fail: "Broh how do you fail the biggest heist in the dimension.", item: i1)
Adventure.create(name: "Edge of Tomorty", location: "Dimension L-472", description: "Rick and Morty are searching for Death Crystals. We need to gather them before they end up in the wrong hands.", pass: "Crystals were gathered successfully.", fail: "The Death Crystals fell into the wrong hands.", item: i2)
Adventure.create(name: "Get Schwifty", location: "Dimension C-137", description: "Save the planet from the talking heads in the sky by coming up with the best song.", pass: "Congrats! You got Schwifty!", fail: "Broh... you're far from getting schwifty.", item: i1)
Adventure.create(name: "Meseeks and Destroy", location: "Dimension C-137", description: "Broh, Jerry messed up again and made 100 Meseeks who wont go away. Do something about it before they end the world.", pass: "You saved the world from ravaging Meseeks!", fail: "Blame Jerry for the world ending.", item: i5)
Adventure.create(name: "Vindicators part 3", location: "Dimension D-153", description: "Worldender has returned. Rick and Morty need to go out with the Vindicators to stop their madness otherwise it could be the end of the world.", pass: "Rick, Morty and the Vindicators were able to stop Worldender.", fail: "Worldender lived up to their name and ended the world.", item: i1)


Rick.create(name: "Pickle Rick", attitude: "Insane", species: "Pickle")
Rick.create(name: "Fascist Wasp Rick", attitude: "Kind", species: "Wasp")
Rick.create(name: "Toxic Rick", attitude: "Toxic", species: "Human")
Rick.create(name: "Replacement Rick", attitude: "Self-centered", species: "Clone")
Rick.create(name: "Tiny Rick", attitude: "Laid-back", species: "Human")
Rick.create(name: "Drunk Rick", attitude: "Unresponsive", species: "Human")
Rick.create(name: "Doofus Rick", attitude: "Humorous", species: "Human")
Rick.create(name: "Alien Rick", attitude: "Toxic", species: "Alien")

Morty.create(name: "Toxic Morty", attitude: "Afraid", species: "human")
Morty.create(name: "President Morty", attitude: "Cowering", species: "Human")
Morty.create(name: "One Eyed Morty", attitude: "Courageous", species: "Human")
Morty.create(name: "Rabbit Morty", attitude: "Joyful", species: "Rabbit")
Morty.create(name: "Hipster Morty", attitude: "Resentful", species: "Human")
Morty.create(name: "Parasitic Morty", attitude: "Dependent", species: "Parasite")
Morty.create(name: "Mortysaurus", attitude: "Destructive", species: "Dinosaur")
Morty.create(name: "Ventriloquiver Morty", attitude: "Enthusiastic", species: "Ventriloquist")


puts "Done"
