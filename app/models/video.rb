class Video < ActiveRecord::Base
  belongs_to :author, class_name: "User"
  validates :author_id, presence: true
  validates :url, uniqueness: true
  has_many :video_playlists
  has_many :playlists, through: :video_playlists
end
