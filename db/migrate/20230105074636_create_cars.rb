class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :image
      t.string :name
      t.text :description
      t.text :model
      t.date :manufacturing_date
      t.boolean :reserved, default: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
