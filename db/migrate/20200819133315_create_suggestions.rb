class CreateSuggestions < ActiveRecord::Migration[6.0]
  def change
    create_table :suggestions do |t|
      t.references :collaborator, null: false, foreign_key: true
      t.references :project, null: false, foreign_key: true
      t.string :status
      t.string :description

      t.timestamps
    end
  end
end
