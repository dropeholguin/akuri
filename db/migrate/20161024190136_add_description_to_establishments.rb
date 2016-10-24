class AddDescriptionToEstablishments < ActiveRecord::Migration[5.0]
  def change
  	add_column :establishments, :description, :text
  end
end
