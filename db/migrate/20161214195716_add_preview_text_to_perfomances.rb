class AddPreviewTextToPerfomances < ActiveRecord::Migration
  def change
    add_column :perfomances, :preview_text, :text
  end
end
