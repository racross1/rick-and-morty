class User < ApplicationRecord
    has_many :quests 
    has_many :ricks, through: :quests
    has_many :morties, through: :quests
    has_many :adventures, through: :quests

    has_secure_password
end
