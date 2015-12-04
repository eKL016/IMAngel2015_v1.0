class CreateMasters < ActiveRecord::Migration
  def change
    create_table :masters do |t|
        

      t.timestamps null: false
      t.string :name
      t.boolean :gender
      t.integer :type
      t.string :photo
    end
    
  end
end
