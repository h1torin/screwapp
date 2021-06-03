class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  # belongs_to :parent, class_name: 'Comment', optional: true
  # has_many :replies, class_name: 'Comment', foreign_key: :parent_id, dependent: :destroy
  validates :content, presence: true
  # if self.user != post.user
    after_create_commit { notify }
  # end

  private

  def notify
    Notification.create(event: "New Comment") if user != post.user
  end
end
