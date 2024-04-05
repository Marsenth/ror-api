class AddCategoryToProducts < ActiveRecord::Migration[7.1]
  def change
    add_column :products, :category_id, :string
    add_foreign_key :products, :categories, column: :category_id, primary_key: :id
  end
end
