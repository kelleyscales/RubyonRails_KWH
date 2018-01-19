class RemakeBookings < ActiveRecord::Migration[5.1]
  def change
  	drop_table :bookings
  	create_table :bookings do |t|
      t.date :checkin
      t.date :checkout
      t.references :room, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
