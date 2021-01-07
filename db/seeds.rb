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

i1 = Item.create(name: "Meseeks Box", success_rate: 2)
i2 = Item.create(name: "Portal Gun", success_rate: 4)
i3 = Item.create(name: "Morty's Spellbook", success_rate: 0)
i4 = Item.create(name: "Microverse Battery", success_rate: 4)
i5 = Item.create(name: "Plumbus", success_rate: 3)
i6 = Item.create(name: "Eyeholes", success_rate: 1 )

Adventure.create(name: "You S.O.B I'm in", location: "Dimension C-137", description: "Plan the biggest hiest in the dimension broh. This is not a joke and it will get wild.", pass: "The heist was successful broh.", fail: "Broh how do you fail the biggest heist in the dimension.", item: i1)
Adventure.create(name: "Edge of Tomorty", location: "Dimension L-472", description: "Rick and Morty are searching for Death Crystals. We need to gather them before they end up in the wrong hands.", pass: "Crystals were gathered successfully.", fail: "The Death Crystals fell into the wrong hands.", item: i2)
Adventure.create(name: "Get Schwifty", location: "Dimension C-137", description: "Save the planet from the talking heads in the sky by coming up with the best song.", pass: "Congrats! You got Schwifty!", fail: "Broh... you're far from getting schwifty.", item: i1)
Adventure.create(name: "Meseeks and Destroy", location: "Dimension C-137", description: "Broh, Jerry messed up again and made 100 Meseeks who wont go away. Do something about it before they end the world.", pass: "You saved the world from ravaging Meseeks!", fail: "Blame Jerry for the world ending.", item: i5)
Adventure.create(name: "Vindicators part 3", location: "Dimension D-153", description: "Worldender has returned. Rick and Morty need to go out with the Vindicators to stop their madness otherwise it could be the end of the world.", pass: "Rick, Morty and the Vindicators were able to stop Worldender.", fail: "Worldender lived up to their name and ended the world.", item: i1)


Rick.create(name: "Pickle Rick", attitude: "Insane", species: "Pickle", img: "https://p7.hiclipart.com/preview/27/385/127/rick-sanchez-pickle-rick-youtube-television-pickle-rick.jpg")
Rick.create(name: "Fascist Wasp Rick", attitude: "Kind", species: "Wasp", img: "https://static.wikia.nocookie.net/rickandmorty/images/f/f1/S4e1_wasp_rick.png/revision/latest/top-crop/width/360/height/360?cb=20191114012049")
Rick.create(name: "Toxic Rick", attitude: "Toxic", species: "Human", img: "https://static.wikia.nocookie.net/rickandmorty/images/3/3e/Toxic_Rick_Fixed_Transparent_by_Mixo.png/revision/latest?cb=20190519162532")
Rick.create(name: "Replacement Rick", attitude: "Self-centered", species: "Clone", img: "https://static.wikia.nocookie.net/rickandmorty/images/6/6a/S4e1_hollo_rick.png/revision/latest?cb=20191114003039")
Rick.create(name: "Tiny Rick", attitude: "Laid-back", species: "Human", img: "https://static.wikia.nocookie.net/villains/images/2/23/TinyRick.png/revision/latest?cb=20170930193138")
Rick.create(name: "Drunk Rick", attitude: "Unresponsive", species: "Human", img: "https://static.wikia.nocookie.net/rickandmorty/images/d/dd/Rick.png/revision/latest/scale-to-width-down/340?cb=20131230003659")
Rick.create(name: "Doofus Rick", attitude: "Humorous", species: "Human", img: "https://static.wikia.nocookie.net/rickandmorty/images/7/76/Doofus_Rick.png/revision/latest?cb=20160925080931")
Rick.create(name: "Alien Rick", attitude: "Toxic", species: "Alien", img: "https://pocketmortys.net/images/assets/CharacterRickAlienFront.png")

Morty.create(name: "Toxic Morty", attitude: "Afraid", species: "human", img: "https://pocketmortys.net/images/assets/MortyGunkFront.png")
Morty.create(name: "President Morty", attitude: "Cowering", species: "Human", img: "https://static.wikia.nocookie.net/rickandmorty/images/8/80/S3e7_evil_morty.png/revision/latest?cb=20180504132753")
Morty.create(name: "One Eyed Morty", attitude: "Courageous", species: "Human", img: "https://static.wikia.nocookie.net/rickandmorty/images/2/2b/PM-011.png/revision/latest/top-crop/width/360/height/360?cb=20160916014412")
Morty.create(name: "Rabbit Morty", attitude: "Joyful", species: "Rabbit", img: "https://static.wikia.nocookie.net/rickandmorty/images/d/d4/PM-008.png/revision/latest?cb=20160916013858")
Morty.create(name: "Hipster Morty", attitude: "Resentful", species: "Human", img: "https://pocketmortys.net/images/assets/MortyHipsterFront.png")
Morty.create(name: "Parasitic Morty", attitude: "Dependent", species: "Parasite", img: "https://static.wikia.nocookie.net/rickandmorty/images/5/5c/PM-121.png/revision/latest?cb=20160602173518")
Morty.create(name: "Mortysaurus", attitude: "Destructive", species: "Dinosaur", img: "https://pocketmortys.net/images/assets/MortyRaptorFront.png")
Morty.create(name: "Ventriloquiver Morty", attitude: "Enthusiastic", species: "Ventriloquist", img: "https://pocketmortys.net/images/assets/MortyVentriloquiverFront.png")


puts "Done"
