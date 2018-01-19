class CreateListings < ActiveRecord::Migration[5.1]
  def change
    create_table :listings do |t|
      t.boolean :broken
      t.boolean :stolen
      t.references :inventory, foreign_key: true

      t.timestamps
    end
  end
end
