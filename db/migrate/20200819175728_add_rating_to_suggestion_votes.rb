class AddRatingToSuggestionVotes < ActiveRecord::Migration[6.0]
  def change
    add_column :suggestion_votes, :rating, :integer
  end
end
