class Add < ActiveRecord::Migration
  def change
      create_table :masters
      add_column :users, :gender, :boolean
      add_column :masters, :name, :string 
      add_column :masters, :gender, :boolean
      add_column :masters, :type, :integer
      add_column :masters, :photo, :string
      remove_foreign_key :users, :master, :column => :master, :primary_key => :name
    end
end
