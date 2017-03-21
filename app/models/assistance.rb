class Assistance < ApplicationRecord
  validates :user_id, uniqueness: true
end
