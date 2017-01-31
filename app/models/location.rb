class Location < ApplicationRecord
  acts_as_mappable  :lat_column_name => :latitude,
                    :lng_column_name => :longitude

  validates :latitude,
            :longitude,
            presence: true
end
