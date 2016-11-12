json.extract! location, :id, :address, :location_name, :phone_number, :district, :city, :postcode, :country, :lat, :lng, :created_at, :updated_at
json.url location_url(location, format: :json)