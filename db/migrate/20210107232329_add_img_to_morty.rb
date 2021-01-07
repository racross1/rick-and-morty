class AddImgToMorty < ActiveRecord::Migration[6.1]
  def change
    add_column :morties, :img, :string
  end
end
