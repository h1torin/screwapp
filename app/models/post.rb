class Post < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_many :reactions, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_one_attached :photo
  has_and_belongs_to_many :tags

  after_create do
    hashtags = self.content.scan(/#\w+/)
    hashtags.uniq.map do |hashtag|
      tag = Tag.find_or_create_by(name: hashtag.delete('#'))
      self.tags << tag
    end
  end

  before_update do
    self.tags.clear
    hashtags = self.content.scan(/#w*/)
    raise
    hashtags.uniq.map do |hashtag|
      tag = Tag.find_or_create_by(name: hashtag.delete('#'))
      self.tags << tag
    end
  end
end

