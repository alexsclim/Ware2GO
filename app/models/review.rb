class Review < ApplicationRecord
  validates :body,
            :user_name,
            presence: true

  belongs_to :location
end
