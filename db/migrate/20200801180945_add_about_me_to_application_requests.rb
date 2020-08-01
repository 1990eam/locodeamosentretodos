class AddAboutMeToApplicationRequests < ActiveRecord::Migration[6.0]
  def change
    add_column :application_requests, :about_me, :text
  end
end
