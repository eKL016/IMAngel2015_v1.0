class CreateRails < ActiveRecord::Migration
  def change
    create_table :rails do |t|
      t.string :g
      t.string :model
      t.string :page
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
