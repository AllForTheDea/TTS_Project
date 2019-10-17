class ChangeLinesToText < ActiveRecord::Migration[6.0]
  def change
  	change_column :character_lines, :line, :text
  end
end
