class AddAppRequestsFkToChatrooms < ActiveRecord::Migration[6.0]
  def change
    add_reference :chatrooms, :application_request, foreign_key: true
  end
end
