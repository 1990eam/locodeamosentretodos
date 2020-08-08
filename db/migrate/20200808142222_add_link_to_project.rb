class AddLinkToProject < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :link, :text
  end
end
