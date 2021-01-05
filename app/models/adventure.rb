class Adventure < ApplicationRecord
  belongs_to :item
  has_many :quests
  has_many :users, through: :quests
  has_many :ricks, through: :quests
  has_many :morties, through: :quests
end
