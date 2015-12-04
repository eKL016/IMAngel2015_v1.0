class MakeConnect < ActiveRecord::Migration
  def change
      add_foreign_key :masters, :users, column: :masters_name, primary_key: "users_master"
  end
end
