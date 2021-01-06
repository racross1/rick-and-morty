class AddQuestTotalToQuest < ActiveRecord::Migration[6.1]
  def change
    add_column :quests, :quest_total, :integer
  end
end
