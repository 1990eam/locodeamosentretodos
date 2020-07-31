class CreateRoles < ActiveRecord::Migration[6.0]
  def change
    create_table :roles do |t|
      t.string :name
      t.references :project, null: false, foreign_key: true
    end
  end
end
