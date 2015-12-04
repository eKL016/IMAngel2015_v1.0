class AddGradeToMaster < ActiveRecord::Migration
  def change
      add_column :masters, :grade, :string
  end
end
