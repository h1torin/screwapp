class AddStatusToNotification < ActiveRecord::Migration[6.0]
  def change
    add_column :notifications, :status, :boolean
  end
end
