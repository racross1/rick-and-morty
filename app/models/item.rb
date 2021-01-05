class Item < ApplicationRecord
    has_many :quest_items
    has_many :quests, through: :quest_items
    has_many :adventures
end
