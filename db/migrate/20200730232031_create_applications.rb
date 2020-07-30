class CreateApplications < ActiveRecord::Migration[6.0]
  def change
    create_table :applications do |t|
      t.references :role, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :status
    end
  end
end
