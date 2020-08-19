class DropPositiveVotesTable < ActiveRecord::Migration[6.0]
  def change
    def up
      drop_table :positive_votes
    end

    def down
      fail ActiveRecord::IrreversibleMigration
    end
  end
end
