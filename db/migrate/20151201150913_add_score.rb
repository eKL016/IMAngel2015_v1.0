class AddScore < ActiveRecord::Migration
  def change
      add_column :pages, :finish, :boolean
      add_column :pages, :score, :integer 
      add_column :users, :score, :integer
  end
end
