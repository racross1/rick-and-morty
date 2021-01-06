class AddSurvivalTotalToQuest < ActiveRecord::Migration[6.1]
  def change
    add_column :quests, :survival_total, :integer
  end
end
