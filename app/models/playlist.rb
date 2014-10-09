class Playlist < ActiveRecord::Base
  belongs_to :author, class_name: "User"
  has_many :video_playlists
  has_many :videos, through: :video_playlists
  has_many :comments, as: :commentable
end
