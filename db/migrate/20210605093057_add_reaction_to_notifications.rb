class AddReactionToNotifications < ActiveRecord::Migration[6.0]
  def change
    add_reference :notifications, :reaction, foreign_key: true
  end
end
