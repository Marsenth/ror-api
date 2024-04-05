class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products, id: :string do |t|
      t.string :name, null: false
      t.text :description
      t.decimal :amount, default: 0
      t.string :status, default: 'DRAFT'

      t.timestamps
    end
  end
end
