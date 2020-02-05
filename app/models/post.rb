class Post < ApplicationRecord
  validates :title, :youtube_url, presence: true
  belongs_to :user
end
