class CreateHouses < ActiveRecord::Migration[7.0]
  def change
    create_table :houses do |t|
      t.string :name
      t.string :image
      t.float :price
      t.string :location
      t.text :description
      t.integer :bedroom_number
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
