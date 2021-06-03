class AddForeignKeysToNotifications < ActiveRecord::Migration[6.0]
  def change
    add_reference :notifications, :comment, foreign_key: true
  end
end
