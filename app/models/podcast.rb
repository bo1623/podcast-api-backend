class Podcast < ApplicationRecord
  has_many :episodes
  has_many :reviews

end
