class AddSponsoredToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :sponsored, :boolean, default: false
  end
end
