class ChangeSuggestionDescriptionToText < ActiveRecord::Migration[6.0]
  def change
    change_column :suggestions, :description, :text
  end
end
