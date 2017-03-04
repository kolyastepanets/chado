class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.text :title
      t.text :text
      t.string :image

      t.timestamps null: false
    end
  end
end
