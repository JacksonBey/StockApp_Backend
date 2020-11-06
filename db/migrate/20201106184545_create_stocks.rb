class CreateStocks < ActiveRecord::Migration[6.0]
  def change
    create_table :stocks do |t|
      t.float :value
      t.string :company
      t.string :industry
      t.text :description

      t.timestamps
    end
  end
end
