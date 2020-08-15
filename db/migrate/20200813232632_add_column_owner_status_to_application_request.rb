class AddColumnOwnerStatusToApplicationRequest < ActiveRecord::Migration[6.0]
  def change
    add_column :application_requests, :owner_status, :string, default: "pending"
  end
end
