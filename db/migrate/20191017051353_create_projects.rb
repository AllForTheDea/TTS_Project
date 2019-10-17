class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.integer :user_id
      t.string :role
      t.text :script

      t.timestamps
    end
  end
end
