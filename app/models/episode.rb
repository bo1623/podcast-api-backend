class Episode < ApplicationRecord
  has_many :savedepisodes
  belongs_to :podcast
end
