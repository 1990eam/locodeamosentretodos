class AddCreatedAtToApplicationRequests < ActiveRecord::Migration[6.0]
  def change
    add_timestamps :application_requests, null: true

    long_ago = DateTime.new(2020, 1, 1)
    ApplicationRequest.update_all(created_at: long_ago, updated_at: long_ago)

    change_column_null :application_requests, :created_at, false
    change_column_null :application_requests, :updated_at, false
  end
end
