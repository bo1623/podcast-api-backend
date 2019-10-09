class Podcast < ApplicationRecord
  has_many :episodes
  # belongs_to :user
  # has_many :reviews

end
