class CreateQuests < ActiveRecord::Migration[6.1]
  def change
    create_table :quests do |t|
      t.references :user, null: false, foreign_key: true
      t.references :rick, null: false, foreign_key: true
      t.references :morty, null: false, foreign_key: true
      t.references :adventure, null: false, foreign_key: true
      t.boolean :success

      t.timestamps
    end
  end
end
