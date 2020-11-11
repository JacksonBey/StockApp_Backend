class CreateWatchListStocks < ActiveRecord::Migration[6.0]
  def change
    create_table :watch_list_stocks do |t|
      t.belongs_to :stock, null: false, foreign_key: true
      t.belongs_to :watch_list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
