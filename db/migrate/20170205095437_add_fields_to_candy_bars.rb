class AddFieldsToCandyBars < ActiveRecord::Migration
  def change
    add_column :candy_bars, :cake, :integer
    add_column :candy_bars, :cup_cake_cream, :integer
    add_column :candy_bars, :cup_cake_mastic, :integer
    add_column :candy_bars, :gingerbreads, :integer
    add_column :candy_bars, :cake_pops, :integer
    add_column :candy_bars, :zephyr, :integer
    add_column :candy_bars, :jujube, :integer
    add_column :candy_bars, :makaro, :integer
  end
end
