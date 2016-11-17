class RenameColumnsToLocations < ActiveRecord::Migration[5.0]
  def change
  	rename_column :locations, :lat, :latitude
  	rename_column :locations, :lng, :longitude
  	remove_reference :locations, :establishments, index: true, foreign_key: true
  	add_reference :locations, :establishment, index: true, foreign_key: true
  end
end
