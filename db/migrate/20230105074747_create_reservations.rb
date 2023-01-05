class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :car, null: false, foreign_key: true
      t.date :reserve_date

      t.timestamps
    end
  end
end
