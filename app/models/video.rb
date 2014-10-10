class Video < ActiveRecord::Base
  belongs_to :author, class_name: "User"
  validates :author_id, presence: true
  validates :url, uniqueness: true
  has_many :video_playlists
  has_many :playlists, through: :video_playlists
  has_many :comments, as: :commentable

  def self.separate_comma(number)
    number.to_s.chars.to_a.reverse.each_slice(3).map(&:join).join(",").reverse
  end
end
