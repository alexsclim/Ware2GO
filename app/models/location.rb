class Location < ApplicationRecord
  acts_as_mappable  :lat_column_name => :latitude,
                    :lng_column_name => :longitude

  validates :latitude,
            :longitude,
            presence: true

  has_many :reviews, dependent: :destroy
  has_many :visits
  has_many :users, through: :visits

  def self.to_csv
    CSV.generate do |csv|
      csv << column_names
      all.each do |product|
        csv << product.attributes.values_at(*column_names)
      end
    end
  end
end
