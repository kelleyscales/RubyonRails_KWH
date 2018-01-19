class DropKey < ActiveRecord::Migration[5.1]
  def change
      remove_foreign_key :bookings, name: "users_id"

  end
end
