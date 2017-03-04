class CreateAdditionalServices < ActiveRecord::Migration
  def change
    create_table :additional_services do |t|
      t.string :title
      t.string :image
      t.text :text

      t.timestamps null: false
    end
  end
end
