class AddMainImageToIndex < ActiveRecord::Migration[7.0]
  def change
    add_column :indices, :main_image, :string
  end
end
