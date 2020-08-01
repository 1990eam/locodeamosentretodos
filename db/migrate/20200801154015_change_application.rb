class ChangeApplication < ActiveRecord::Migration[6.0]
  def change
      rename_table :applications, :application_requests
  end
end
