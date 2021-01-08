class AddImgToRick < ActiveRecord::Migration[6.1]
  def change
    add_column :ricks, :img, :string
  end
end
