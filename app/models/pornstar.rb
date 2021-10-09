class Pornstar < ApplicationRecord
  has_many :pornstar_videos
  has_many :videos, through: :pornstar_videos
end
