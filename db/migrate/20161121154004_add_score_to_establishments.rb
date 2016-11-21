class AddScoreToEstablishments < ActiveRecord::Migration[5.0]
  def change
  	add_column :establishments, :score, :integer
  end
end
