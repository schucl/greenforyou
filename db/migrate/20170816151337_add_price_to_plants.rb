class AddPriceToPlants < ActiveRecord::Migration[5.1]
  def change
    add_column :plants, :price, :integer, default: 0, null: false
  end
end
