class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.integer :room_number
      t.integer :capacity
      t.integer :daily_price
      t.references :hotel, null: false, foreign_key: true

      t.timestamps
    end
  end
end
