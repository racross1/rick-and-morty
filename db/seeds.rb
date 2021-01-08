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

i1 = Item.create(name: "Meseeks Box", success_rate: 2, img: "https://banner2.cleanpng.com/20180525/ujb/kisspng-meeseeks-and-destroy-rick-sanchez-paper-box-adult-5b07a46409e053.3340288615272274920405.jpg")
i2 = Item.create(name: "Portal Gun", success_rate: 4, img: "https://e1.pngegg.com/pngimages/656/935/png-clipart-rick-and-morty-hq-resource-rick-and-morty-portal-gun-illustration.png")
i3 = Item.create(name: "Morty's Spellbook", success_rate: -1, img: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-qTSIFsi-sGEP81dPWZxBfSN06-mT5ephfg&usqp=CAU")
i4 = Item.create(name: "Microverse Battery", success_rate: 4, img: "https://image.pngaaa.com/286/3018286-middle.png")
i5 = Item.create(name: "Plumbus", success_rate: 3, img: "https://www.pinclipart.com/picdir/big/281-2816631_rick-and-morty-plumbus-t-shirt-clipart.png")
i6 = Item.create(name: "Eyeholes", success_rate: 1, img: "https://cdn.shopify.com/s/files/1/0163/5948/9636/files/Rick-and-Morty-Eyeholes-Cereal-Box_PRINT-1.png")
i7 = Item.create(name: "Dream Inceptor", success_rate: 2, img: "https://static.wikia.nocookie.net/rickandmorty/images/3/3e/Dream_Inceptor_Lawnmower_Dog_02_04.PNG")
i8 = Item.create(name: "Series 9000 Brainalyzer", success_rate: 1, img: "https://static.wikia.nocookie.net/rickandmorty/images/e/e2/Series_9000_Brainalyzer.png")
i9 = Item.create(name: "Ionic Defibulizer", success_rate: -2, img: "https://static.wikia.nocookie.net/rickandmorty/images/9/9e/Defibulizer.PNG")
i10 = Item.create(name: "Courier Flap", success_rate: 0, img: "https://www.nicepng.com/png/detail/112-1129284_courier-flap-rick-and-morty-mega-seed.png")
i11 = Item.create(name: "Broken Leg Serum", success_rate: 0, img: "https://static.wikia.nocookie.net/rickandmorty/images/3/32/Broken_Leg_Serum_Pilot_11_52.PNG")
i12 = Item.create(name: "Interdimensional Goggles", success_rate: 1, img: "https://static.wikia.nocookie.net/rickandmorty/images/0/00/Interdimensional_Goggles.png")
i13 = Item.create(name: "Time Stabilizing Collar", success_rate: 2, img: "https://pocketmortys.net/images/assets/ItemTimeStabilisingCollarFront.png")
i14 = Item.create(name: "Combat Suit", success_rate: 3, img: "https://orig10.deviantart.net/fa34/f/2015/301/e/3/suits_by_doctorworm1987-d9eqvs8.jpg")
i15 = Item.create(name: "Cognition Amplifier", success_rate: 2, img: "https://static.wikia.nocookie.net/rickandmorty/images/9/9c/IQ_Enhancing_Helmet.png")
i16 = Item.create(name: "Space Cruiser", success_rate: 3, img: "https://images5.alphacoders.com/625/thumb-350-625914.jpg")
i17 = Item.create(name: "Butter Robot", success_rate: 3, img: "https://static.wikia.nocookie.net/rickandmorty/images/7/77/Butter_Robot.png")
i18 = Item.create(name: "Gwendolyn", success_rate: 1, img: "https://www.longboarderlabs.com/wp-content/uploads/2019/08/rick-morty-robot-500x500.jpg")
i19 = Item.create(name: "Schmeckel", success_rate: 1, img: "https://static.wikia.nocookie.net/rickandmorty/images/5/56/Schmeckles.png")
i20 = Item.create(name: "Mega Seeds", success_rate: 2, img: "https://static.wikia.nocookie.net/rickandmorty/images/e/e8/Speed_Mega_Seed.png")
i21 = Item.create(name: "Time Crystals", success_rate: 3, img: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRxfReGssj3aRS850BKcJu35CdCaLR_vwzmw&usqp=CAU")

Adventure.create(name: "You S.O.B I'm in", location: "Dimension C-137", description: "Plan the biggest hiest in the dimension broh. This is not a joke and it will get wild.", pass: "The heist was successful broh.", fail: "Broh how do you fail the biggest heist in the dimension.", item: i1)
Adventure.create(name: "Edge of Tomorty", location: "Dimension L-472", description: "Rick and Morty are searching for Death Crystals. We need to gather them before they end up in the wrong hands.", pass: "Crystals were gathered successfully.", fail: "The Death Crystals fell into the wrong hands.", item: i2)
Adventure.create(name: "Get Schwifty", location: "Dimension C-137", description: "Save the planet from the talking heads in the sky by coming up with the best song.", pass: "Congrats! You got Schwifty!", fail: "Broh... you're far from getting schwifty.", item: i1)
Adventure.create(name: "Meseeks and Destroy", location: "Dimension C-137", description: "Broh, Jerry messed up again and made 100 Meseeks who wont go away. Do something about it before they end the world.", pass: "You saved the world from ravaging Meseeks!", fail: "Blame Jerry for the world ending.", item: i5)
Adventure.create(name: "Vindicators part 3", location: "Dimension D-153", description: "Worldender has returned. Rick and Morty need to go out with the Vindicators to stop their madness otherwise it could be the end of the world.", pass: "Rick, Morty and the Vindicators were able to stop Worldender.", fail: "Worldender lived up to their name and ended the world.", item: i1)


Rick.create(name: "Pickle Rick", attitude: "Insane", species: "Pickle", img: "https://p7.hiclipart.com/preview/27/385/127/rick-sanchez-pickle-rick-youtube-television-pickle-rick.jpg")
Rick.create(name: "Fascist Wasp Rick", attitude: "Kind", species: "Wasp", img: "https://static.wikia.nocookie.net/rickandmorty/images/f/f7/S4e1_2019-11-13-12h54m06s993.png")
Rick.create(name: "Toxic Rick", attitude: "Toxic", species: "Human", img: "https://i.pinimg.com/originals/90/3b/27/903b27f52b17c59395d8cd897c8bf9c3.png")
Rick.create(name: "Replacement Rick", attitude: "Self-centered", species: "Clone", img: "https://i.ytimg.com/vi/tvYt2AI7OLE/maxresdefault.jpg")
Rick.create(name: "Tiny Rick", attitude: "Laid-back", species: "Human", img: "https://static.wikia.nocookie.net/rickandmorty/images/2/23/TinyRick.png")
Rick.create(name: "Drunk Rick", attitude: "Unresponsive", species: "Human", img: "https://i.pinimg.com/736x/60/4f/0b/604f0b8b93f5c46bfbe5939e39411b13.jpg")
Rick.create(name: "Doofus Rick", attitude: "Humorous", species: "Human", img: "https://pm1.narvii.com/6512/50f77aac0625709dfd6566ed59901a58b12694bc_00.jpg")
Rick.create(name: "Alien Rick", attitude: "Toxic", species: "Alien", img: "https://pocketmortys.net/images/assets/CharacterRickAlienFront.png")

Morty.create(name: "Toxic Morty", attitude: "Afraid", species: "human", img: "https://pocketmortys.net/images/assets/MortyGunkFront.png")
Morty.create(name: "President Morty", attitude: "Cowering", species: "Human", img: "https://static.wikia.nocookie.net/rickandmorty/images/8/80/S3e7_evil_morty.png")
Morty.create(name: "One Eyed Morty", attitude: "Courageous", species: "Human", img: "https://static.wikia.nocookie.net/rickandmorty/images/2/2b/PM-011.png")
Morty.create(name: "Rabbit Morty", attitude: "Joyful", species: "Rabbit", img: "https://static.wikia.nocookie.net/rickandmorty/images/d/d4/PM-008.png")
Morty.create(name: "Hipster Morty", attitude: "Resentful", species: "Human", img: "https://pocketmortys.net/images/assets/MortyHipsterFront.png")
Morty.create(name: "Parasitic Morty", attitude: "Dependent", species: "Parasite", img: "https://static.wikia.nocookie.net/rickandmorty/images/5/5c/PM-121.png")
Morty.create(name: "Mortysaurus", attitude: "Destructive", species: "Dinosaur", img: "https://pocketmortys.net/images/assets/MortyRaptorFront.png")
Morty.create(name: "Ventriloquiver Morty", attitude: "Enthusiastic", species: "Ventriloquist", img: "https://pocketmortys.net/images/assets/MortyVentriloquiverFront.png")


puts "Done"
