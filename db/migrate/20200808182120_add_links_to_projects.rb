class AddLinksToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :link_1, :string
    add_column :projects, :link_2, :string
  end
end
