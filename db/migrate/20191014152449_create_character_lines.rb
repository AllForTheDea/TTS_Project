class CreateCharacterLines < ActiveRecord::Migration[6.0]
  def change
    create_table :character_lines do |t|
      t.string :line
      t.integer :voiceline_id
      t.integer :user_id
      t.integer :project_id

      t.timestamps
    end
  end
end
