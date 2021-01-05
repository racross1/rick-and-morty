class Quest < ApplicationRecord
  belongs_to :user
  belongs_to :rick
  belongs_to :morty
  belongs_to :adventure
  has_many :quest_items
  has_many :items, through: :quest_items
end
