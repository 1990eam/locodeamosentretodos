class DeleteLinksFromProjects < ActiveRecord::Migration[6.0]
  def change
    remove_column :projects, :links
  end
end
