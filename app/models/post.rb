class Post < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_many :reactions, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_one_attached :photo
end
