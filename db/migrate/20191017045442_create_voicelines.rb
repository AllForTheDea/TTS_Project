class CreateVoicelines < ActiveRecord::Migration[6.0]
  def change
    create_table :voicelines do |t|
      t.integer :user_id
      t.string :character
      t.integer :line_id
      t.integer :project_id

      t.timestamps
    end
  end
end
