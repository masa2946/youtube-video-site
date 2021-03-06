class Post < ApplicationRecord
  validates :title, :youtube_url, presence: true
  belongs_to :user
  has_many :likes, dependent: :destroy

  def like_user(user_id)
    likes.find_by(user_id: user_id)
  end
end
