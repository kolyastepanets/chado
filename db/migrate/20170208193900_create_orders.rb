class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :package_type
      t.string :cake
      t.string :cup_cake_cream
      t.string :cup_cake_mastic
      t.string :gingerbreads
      t.string :cake_pops
      t.string :zephyr
      t.string :jujube
      t.string :makaro
      t.decimal :total_price
      t.string :phone
      t.string :email
      t.string :name

      t.timestamps null: false
    end
  end
end
