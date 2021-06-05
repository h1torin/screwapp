class Notification < ApplicationRecord
  belongs_to :comment, optional: true
  belongs_to :reaction, optional: true
  belongs_to :user
  attribute :status, default: false
end
