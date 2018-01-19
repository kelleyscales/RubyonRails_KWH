class CreateRoomTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :room_types do |t|
      t.string :name
      t.decimal :cost

      t.timestamps
    end
  end
end
