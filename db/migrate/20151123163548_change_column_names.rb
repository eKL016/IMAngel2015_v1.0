class ChangeColumnNames < ActiveRecord::Migration
  def change
      rename_column :users, :type, :genre
      rename_column :masters, :type, :genre
  end
end
