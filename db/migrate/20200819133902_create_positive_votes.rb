class CreatePositiveVotes < ActiveRecord::Migration[6.0]
  def change
    create_table :positive_votes do |t|
      t.references :suggestion, null: false, foreign_key: true
      t.references :collaborator, null: false, foreign_key: true

      t.timestamps
    end
  end
end
