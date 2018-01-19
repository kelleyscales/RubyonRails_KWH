class CreateInventories < ActiveRecord::Migration[5.1]
  def change
    create_table :inventories do |t|
      t.string :product
      t.decimal :cost

      t.timestamps
    end
  end
end
