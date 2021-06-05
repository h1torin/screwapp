class Reaction < ApplicationRecord
  belongs_to :post
  belongs_to :user
  validates :post_id, uniqueness: { scope: :user_id }

  # after_create_commit { notify }

  private

  def notify
    Notification.create(event: "New Comment") if user != post.user
  end
end
