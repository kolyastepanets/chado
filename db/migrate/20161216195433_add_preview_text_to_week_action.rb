class AddPreviewTextToWeekAction < ActiveRecord::Migration
  def change
    add_column :week_actions, :preview_text, :text
  end
end
