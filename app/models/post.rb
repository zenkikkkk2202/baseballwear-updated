class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :image, presence: true
  mount_uploader :image, ImageUploader

  def self.search(search)
    if search
      Post.where("team LIKE(?)", "%#{search}%")
    else
      Post.all
    end
  end
end
