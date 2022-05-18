class AddSlugToIndex < ActiveRecord::Migration[7.0]
  def change
    add_column :indices, :slug, :string
    add_index :indices, :slug, unique: true
  end
end
