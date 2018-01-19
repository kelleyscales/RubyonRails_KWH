class ChangeNames < ActiveRecord::Migration[5.1]
  def change
      rename_column :users, :fname, :firstname
      rename_column :users, :lname, :lastname
      rename_column :user_types, :type, :title
  end
end
