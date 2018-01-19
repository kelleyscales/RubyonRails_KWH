class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.date :checkin
      t.date :checkout
      t.references :room, foreign_key: true

      t.timestamps
    end
  end
end
