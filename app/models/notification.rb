class Notification < ApplicationRecord
belongs_to :comment, optional: true
belongs_to :user

end

