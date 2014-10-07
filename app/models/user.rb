class User < ActiveRecord::Base
  has_many :videos, foreign_key: "author_id"
  has_many :playlists, foreign_key: "author_id"
  validates :email, uniqueness: true
end
