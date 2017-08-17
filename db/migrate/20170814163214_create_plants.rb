class CreatePlants < ActiveRecord::Migration[5.1]
  def change
    create_table :plants do |t|
      t.string :name
      t.text :description
      t.string :address
      t.string :category
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
