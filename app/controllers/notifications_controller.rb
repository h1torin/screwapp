class NotificationsController < ApplicationController
  def index
    @notifications = policy_scope(Notification).all.reverse
  end
end
