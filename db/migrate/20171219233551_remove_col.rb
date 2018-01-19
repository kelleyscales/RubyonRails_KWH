class RemoveCol < ActiveRecord::Migration[5.1]
  def change
      remove_column :bookings, :users_id
  end
end
