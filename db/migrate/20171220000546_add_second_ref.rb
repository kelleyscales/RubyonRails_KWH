class AddSecondRef < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :bookings, :users, column: :user_id
  end
end
