class CreateMorties < ActiveRecord::Migration[6.1]
  def change
    create_table :morties do |t|
      t.string :name
      t.string :attitude
      t.string :species

      t.timestamps
    end
  end
end
