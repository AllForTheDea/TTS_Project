class AddValueToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :project_name, :string
    add_column :projects, :created_by, :integer
  end
end
