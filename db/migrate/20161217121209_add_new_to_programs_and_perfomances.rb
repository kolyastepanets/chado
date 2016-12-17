class AddNewToProgramsAndPerfomances < ActiveRecord::Migration
  def change
    add_column :perfomances, :new, :boolean, default: false
    add_column :programs, :new, :boolean, default: false
  end
end
