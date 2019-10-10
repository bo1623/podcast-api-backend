class User < ApplicationRecord
  has_many :savedepisodes
  has_many :reviews
end
