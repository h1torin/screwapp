# # To deliver this notification:
# #
# # CommentNotification.with(post: @post).deliver_later(current_user)
# # CommentNotification.with(post: @post).deliver_later(User.all)

# class CommentNotification < Noticed::Base
#   deliver_by :database
#   deliver_by :action_cable
#   deliver_by :email, mailer: 'CommentMailer', if: :email_notifications?

#   # I18n helpers
#   def message
#     t(".message")
#   end

#   # URL helpers are accessible in notifications
#   # Don't forget to set your default_url_options so Rails knows how to generate urls
#   def url
#     post_path(params[:post])
#   end

#   def email_notifications?
#     !!recipient.preferences[:email]
#   end

#   after_deliver do
#     # Anything you want
#   end


#   # Add required params
#   #
#   # param :post
# end
