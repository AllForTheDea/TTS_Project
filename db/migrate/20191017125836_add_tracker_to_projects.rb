class AddTrackerToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :project_id, :integer
  end
end
