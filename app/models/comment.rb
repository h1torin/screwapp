class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  # belongs_to :parent, class_name: 'Comment', optional: true
  # has_many :replies, class_name: 'Comment', foreign_key: :parent_id, dependent: :destroy
  validates :content, presence: true

  after_create_commit { notify }

  private

  def notify
    Notification.create(event: "New Comment")
  end
end
