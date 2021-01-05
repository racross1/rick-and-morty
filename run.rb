require_relative 'config/environment.rb'
require 'pry'

User.destroy_all
Rick.destroy_all
Morty.destroy_all
Item.destroy_all
Adventure.destroy_all
Quest.destroy_all
QuestItem.destroy_all

user1 = User.create(username:"lucas")
rick1 = Rick.create(name: "pickle rick", attitude:"insane", species:"pickle")
morty1 = Morty.create(name: "scruffy", attitude: "lazy", species: "human")
item1 = Item.create(name: "portal gun", success_rate: 5)
item2 = Item.create(name: "mr meeseeks box", success_rate: 6)
adventure1 = Adventure.create(location: "dimension c137", description:"the original rick and morty", pass: "you passed!", fail: "you failed!", item: item1)
quest1  = Quest.create(rick: rick1, user: user1, morty: morty1, adventure: adventure1, success: false)
quest_item1 = QuestItem.create(item: item1, quest: quest1)
quest_item2 = QuestItem.create(item: item2, quest: quest1)

binding.pry

puts "done"


