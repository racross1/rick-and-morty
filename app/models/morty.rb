class Morty < ApplicationRecord
    has_many :quests
    has_many :users, through: :quests
    has_many :ricks, through: :quests
    has_many :adventures, through: :quests
end
