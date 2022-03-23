class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.references :room, null: false, foreign_key: true
      t.integer :guest_number
      t.date :arrival
      t.date :departure
      t.integer :night_number
      t.integer :total_price

      t.timestamps
    end
  end
end
