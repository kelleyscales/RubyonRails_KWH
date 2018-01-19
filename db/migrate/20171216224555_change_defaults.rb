class ChangeDefaults < ActiveRecord::Migration[5.1]
  def change
      change_column :users, :UserType_id, :integer, default: 7
  end
end
