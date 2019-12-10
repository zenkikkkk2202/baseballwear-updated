class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :image, presence: true
  mount_uploader :image, ImageUploader
end
