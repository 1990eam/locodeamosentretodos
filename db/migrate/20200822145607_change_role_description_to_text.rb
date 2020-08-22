class ChangeRoleDescriptionToText < ActiveRecord::Migration[6.0]
  def change
    change_column :roles, :description, :text
  end
end
