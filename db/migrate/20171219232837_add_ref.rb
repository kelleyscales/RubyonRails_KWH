class AddRef < ActiveRecord::Migration[5.1]
  def change
      add_reference :bookings, :users, index: true
  end
end
