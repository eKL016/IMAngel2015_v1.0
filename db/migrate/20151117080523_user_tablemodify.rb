class UserTablemodify < ActiveRecord::Migration
  def change
      add_column :users, :name, :string
      add_column :users, :grade, :string
      add_column :users, :type, :interger
      add_column :users, :master, :string
      add_column :users, :photo, :string
  end
end
