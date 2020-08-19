class ChangeVotesTableName < ActiveRecord::Migration[6.0]
  def change
    rename_table :negative_votes, :suggestion_votes
  end
end
