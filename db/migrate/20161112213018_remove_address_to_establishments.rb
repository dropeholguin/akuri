class RemoveAddressToEstablishments < ActiveRecord::Migration[5.0]
  def change
  	remove_column :establishments, :address
  end
end
