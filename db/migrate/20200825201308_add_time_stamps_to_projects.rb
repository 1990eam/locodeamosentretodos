class AddTimeStampsToProjects < ActiveRecord::Migration[6.0]
  def change
    add_timestamps :projects, null: true

    long_ago = DateTime.new(2020, 1, 1)
    Project.update_all(created_at: long_ago, updated_at: long_ago)

    change_column_null :projects, :created_at, false
    change_column_null :projects, :updated_at, false
  end
end
