class CreateCandyBarImages < ActiveRecord::Migration
  def change
    create_table :candy_bar_images do |t|
      t.string :file
      t.integer :candy_bar_id
      t.string :name

      t.timestamps null: false
    end
  end
end
