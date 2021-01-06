class AddRickAliveToQuest < ActiveRecord::Migration[6.1]
  def change
    add_column :quests, :rick_alive, :boolean
  end
end
