class User < ApplicationRecord
  has_many :visits
  has_many :locations, through: :visits
end
