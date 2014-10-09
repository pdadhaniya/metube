class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :name, presence: true
  validates :email, uniqueness: true
  has_many :videos, foreign_key: "author_id"
  has_many :playlists, foreign_key: "author_id"
  has_many :comments
end
