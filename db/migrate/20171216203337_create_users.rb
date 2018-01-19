class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.references :UserType, foreign_key: true, default: 7

      t.timestamps
    end
  end
end
