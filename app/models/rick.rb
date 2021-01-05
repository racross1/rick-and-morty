class Rick < ApplicationRecord
    has_many :quests
    has_many :users, through: :quests
    has_many :morties, through: :quests
    has_many :adventures, through: :quests
end
