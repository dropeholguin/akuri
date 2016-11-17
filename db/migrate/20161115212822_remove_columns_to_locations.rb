class RemoveColumnsToLocations < ActiveRecord::Migration[5.0]
  def change
  	remove_column :locations, :location_name
  	remove_column :locations, :phone_number
  	remove_column :locations, :district
  	remove_column :locations, :city
  	remove_column :locations, :postcode
  	remove_column :locations, :country
  end
end
