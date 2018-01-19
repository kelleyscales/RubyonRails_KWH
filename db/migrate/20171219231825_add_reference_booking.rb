class AddReferenceBooking < ActiveRecord::Migration[5.1]
  def change
      add_foreign_key :booking, :users, column: :users_id
  end
end
