class ChangeName < ActiveRecord::Migration[5.1]
  def change
      rename_column :user_types, :type, :title
  end
end
