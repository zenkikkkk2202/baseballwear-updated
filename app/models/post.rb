class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :likes, dependent: :destroy
  has_many :liking_users, through: :likes, source: :user

  # validates :image, presence: true
  mount_uploader :image, ImageUploader

  def self.search(search)
    if search
      Post.where("team LIKE(?)", "%#{search}%")
    else
      Post.all
    end
  end
end
