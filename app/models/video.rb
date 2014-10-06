class Video < ActiveRecord::Base
  belongs_to :author, class_name: "User"
  validates :author_id, presence: true
end
