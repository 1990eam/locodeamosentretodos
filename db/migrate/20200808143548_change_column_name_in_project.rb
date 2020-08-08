class ChangeColumnNameInProject < ActiveRecord::Migration[6.0]
  def change
    rename_column :projects, :links, :link
  end
end
