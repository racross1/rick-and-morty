class CreateQuestItems < ActiveRecord::Migration[6.1]
  def change
    create_table :quest_items do |t|
      t.references :item, null: false, foreign_key: true
      t.references :quest, null: false, foreign_key: true

      t.timestamps
    end
  end
end
