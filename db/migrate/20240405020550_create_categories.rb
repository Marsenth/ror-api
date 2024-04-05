class CreateCategories < ActiveRecord::Migration[7.1]
  def change
    create_table :categories, id: :string do |t|
      t.string :name

      t.timestamps
    end
  end
end
