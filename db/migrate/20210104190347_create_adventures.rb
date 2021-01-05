class CreateAdventures < ActiveRecord::Migration[6.1]
  def change
    create_table :adventures do |t|
      t.string :location
      t.text :description
      t.string :pass
      t.string :fail
      t.references :item, null: false, foreign_key: true

      t.timestamps
    end
  end
end
