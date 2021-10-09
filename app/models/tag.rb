class Tag < ApplicationRecord
  has_many :tag_videos
  has_many :videos, through: :tag_videos
end
