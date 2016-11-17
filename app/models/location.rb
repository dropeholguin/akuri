class Location < ApplicationRecord
	belongs_to :establishment

  geocoded_by :address
	after_validation :geocode
end
