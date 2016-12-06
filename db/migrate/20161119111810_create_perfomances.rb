class CreatePerfomances < ActiveRecord::Migration
  def change
    create_table :perfomances do |t|
      t.string :title
      t.text :text
      t.string :image

      t.timestamps null: false
    end
  end
end
