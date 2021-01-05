class AddNameToAdventure < ActiveRecord::Migration[6.1]
  def change
    add_column :adventures, :name, :string
  end
end
