class AddKeyRef < ActiveRecord::Migration[5.1]
  def change
      add_foreign_key :bookings, :users
  end
end
