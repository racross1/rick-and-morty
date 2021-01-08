class AddImgToItem < ActiveRecord::Migration[6.1]
  def change
    add_column :items, :img, :string
  end
end
