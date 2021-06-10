class NotificationsController < ApplicationController
# after_action :mark_as_seen

  def index
    @all_notifications = policy_scope(Notification).all.reverse
    @notifications = @all_notifications.each do |notification|
      notification.status = true
      notification.save
    end
    @counter_index = Notification.where(user: current_user).where(status: false).count
    if @counter_index = 0
      @backgroundcolor = "transparent"
    else
      @backgroundcolor = "rgb(212, 78, 3)"
    end
    ActionCable.server.broadcast("general", {counter: "#{@counter_index}", color:"#{@backgroundcolor}"})

    # raise
  end

private

  # def mark_as_seen
  #   @notifications.each do |notification|
  #     notification.status = true
  #   end
  # end
end
