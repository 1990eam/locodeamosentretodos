class AddDefaultToApplicationRequests < ActiveRecord::Migration[6.0]
  def up
    change_column :application_requests, :status, :string, default: "pending"
  end

  def down
    change_column :application_requests, :status, :string, default: nil
  end
end
