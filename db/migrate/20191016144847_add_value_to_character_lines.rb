class AddValueToCharacterLines < ActiveRecord::Migration[6.0]
  def change
    add_column :character_lines, :character, :string
  end
end
