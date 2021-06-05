class NotificationsController < ApplicationController
# after_action :mark_as_seen

  def index
    @all_notifications = policy_scope(Notification).all.reverse
    @notifications = @all_notifications.each do |notification|
      notification.status = true
      notification.save
    end
    @counter_index = Notification.where(user: current_user).where(status: false).count
    ActionCable.server.broadcast("general", "#{@counter_index}")
    # raise
  end

private

  # def mark_as_seen
  #   @notifications.each do |notification|
  #     notification.status = true
  #   end
  # end
end
