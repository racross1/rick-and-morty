class AddMortyAliveToQuest < ActiveRecord::Migration[6.1]
  def change
    add_column :quests, :morty_alive, :boolean
  end
end
