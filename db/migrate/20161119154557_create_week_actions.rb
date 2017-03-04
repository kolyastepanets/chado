class CreateWeekActions < ActiveRecord::Migration
  def change
    create_table :week_actions do |t|
      t.string :title
      t.text :text

      t.timestamps null: false
    end
  end
end
