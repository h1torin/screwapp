class Post < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_many :reactions

  has_one_attached :photo
end
